package com.dwmpc.model.DAO;

import com.dwmpc.controller.SendEmail;
import com.dwmpc.controller.twiltest;
import com.dwmpc.model.bean.*;

import javax.sql.DataSource;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;

public class ConnectionUtil {
    private final DataSource dataSource;


    //constructor
    public ConnectionUtil(DataSource theDataSource) {
        dataSource=theDataSource;

    }
    public void updateLicenseInformation(String companyId) throws Exception{
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        try{
            myConn=dataSource.getConnection();
            String sql;
            sql="SET SQL_SAFE_UPDATES=0;";
            myStmt=myConn.prepareStatement(sql);
            myStmt.execute();
            sql="UPDATE `dwmpc`.`license` SET `Status` = 'Revoked' WHERE `companyId` = '"+companyId+"';";
            myStmt=myConn.prepareStatement(sql);
            myStmt.execute();
            sql="SET SQL_SAFE_UPDATES=1;";
            myStmt=myConn.prepareStatement(sql);
            myStmt.execute();
        }finally {

        }
    }

    public void setLicenseInformation(license license)throws Exception {
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        String license_Number = null;
        String Waste_Type=null;



        vehicle vehicle=VehicleDetailForLicense(license.getLicense_Number());

        String wasteCode=vehicle.getWaste_Type();
        String wasteCodeFinal=null;

        switch (wasteCode){
            case "Bio waste":
                wasteCodeFinal="BiW01";
                break;
            case "Chemical waste":
                wasteCodeFinal="ChW02";
                break;
            case "Hazardous waste":
                wasteCodeFinal="HaW03";
                break;
            case "Clinical Waste":
                wasteCodeFinal="ClW04";
                break;
            case "Domestic Waste":
                wasteCodeFinal="DoW05";
                break;
        }



        String carrierNumber=vehicle.getCarrie_number();
        String carrierNo = "";     //substring containing first 4 characters
        String carrierLetters="";

        if (carrierNumber.length() > 4)
        {
            carrierNo = carrierNumber.substring(1, 4);
            carrierLetters=carrierNumber.substring(4,7);

        }

        String carrierLettersCode=carrierLetters.toUpperCase();
        StringBuffer sbr = new StringBuffer(carrierNo);


        StringBuffer finalCarrierCode=sbr.reverse();



        try {
            String sql=null;
            myConn=dataSource.getConnection();
            sql ="Select * from vehicle where `Chase_Number`='"+license.getLicense_Number()+"'";
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();
            String companyId=null;
            while(myRs.next()) {
                license_Number=myRs.getString("Carrier Number");
                Waste_Type = myRs.getString("Waste Type");
                companyId = myRs.getString("Company Id");
            }
            sql="INSERT INTO `dwmpc`.`license` (`License_Number`, `Date Unix`, `Expiry_Date`, `License_Type`, `Start_Date`, `Registration_Number`,`Status`,`companyId`) VALUES (?,?,?,?,?,?,?,?)";
            myStmt=myConn.prepareStatement(sql);
            myStmt.setString(1,carrierLettersCode+finalCarrierCode+ vehicle.getCompany_Id()+wasteCodeFinal);
            myStmt.setString(2, license.getDate_Unix());
            myStmt.setString(3, license.getExpiry_Date());
            myStmt.setString(4, Waste_Type);
            myStmt.setString(5, license.getStart_Date());
            myStmt.setString(6,license_Number);
            myStmt.setString(7,"UpToDate");
            myStmt.setString(8,companyId);
            myStmt.execute();


        }catch (Exception e){

        }

    }

    private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

        try {

            if(myRs !=null) {
                myRs.close();
            }
            if (myStmt !=null) {

                myStmt.close();
            }

            if (myConn !=null) {
                myConn.close();//*does not really close it...just put
            }
        }catch(Exception exc) {

            exc.printStackTrace();
        }
    }

    public String registerUser(user userReg,String action) throws Exception{
        Connection myConn=null;
        PreparedStatement myStmt=null;
        ResultSet myRs=null;
        String error="Successful";
        try {
            myConn = dataSource.getConnection();
            String sql2;
            if(action.equals("Registration")||action.equals("Registration_Officer")){
                sql2= "Insert user (`First Name`, `Last Name`, `Email`, `User Type`, `Password`, `Omang`, `Contact`,`Location`) values(?,?,?,?,?,?,?,?)";
                myStmt = myConn.prepareStatement(sql2);
                myStmt.setString(1, userReg.getFirst_name());
                myStmt.setString(2, userReg.getLast_name());
                myStmt.setString(3, userReg.getEmail());
                myStmt.setString(4, userReg.getUser_type());
                myStmt.setString(5, userReg.getPassword());
                myStmt.setInt(6, userReg.getOmang());
                myStmt.setString(7, userReg.getContact());
                myStmt.setString(8, userReg.getLocation());
                myStmt.execute();
                if(!userReg.getUser_type().equals("Client")){
                    int user_id=0;
                    String sql4="Select `User Id` from user where `Email`='"+userReg.getEmail()+"'";
                    myStmt = myConn.prepareStatement(sql4);
                    myRs=myStmt.executeQuery();
                    while (myRs.next()) {
                        user_id=myRs.getInt("User Id");
                    }
                        String sql3 = "INSERT INTO `dwmpc`.`add_role` (`user id`, `add roles`, `current role`, `default role`) VALUES('" +user_id+ "','Nothing','"+userReg.getUser_type()+"','"+userReg.getUser_type()+"')";
                        myStmt = myConn.prepareStatement(sql3);
                        myStmt.execute();

                }
            }else if(action.equals("Editing_Offers")){
                sql2= "Update user set `First Name`=?, `Last Name`=?, `Email`=?, `User Type`=?, `Omang`=?, `Contact`=?,`Location`=?" +
                        ", `Add Roles`=? where `User Id`=?";
                myStmt = myConn.prepareStatement(sql2);
                myStmt.setString(1, userReg.getFirst_name());
                myStmt.setString(2, userReg.getLast_name());
                myStmt.setString(3, userReg.getEmail());
                myStmt.setString(4, userReg.getUser_type());
                myStmt.setInt(5, userReg.getOmang());
                myStmt.setString(6, userReg.getContact());
                myStmt.setString(7, userReg.getLocation());
                myStmt.setString(8, userReg.getAddRoles());
                myStmt.setInt(9, userReg.getUser_Id());
                myStmt.execute();
                    String sql3="Update `dwmpc`.`add_role` set  `add roles`=?, `current role`=?, `default role`=? where `user id`='"+userReg.getUser_Id()+"'";
                    myStmt = myConn.prepareStatement(sql3);
                if (userReg.getAddRoles()!=null){
                    myStmt.setString(1, userReg.getAddRoles());
                  }else {
                    myStmt.setString(1, "Nothing");
                }
                    myStmt.setString(2, userReg.getUser_type());
                    myStmt.setString(3, userReg.getUser_type());
                    myStmt.execute();

            } else if(action.equals("Editing_Client")){
                sql2= "Update user set `First Name`=?, `Last Name`=?, `Email`=?, `User Type`=?, `Omang`=?, `Contact`=?,`Location`=? where `User Id`=?";
                myStmt = myConn.prepareStatement(sql2);
                myStmt.setString(1, userReg.getFirst_name());
                myStmt.setString(2, userReg.getLast_name());
                myStmt.setString(3, userReg.getEmail());
                myStmt.setString(4, userReg.getUser_type());
                myStmt.setInt(5, userReg.getOmang());
                myStmt.setString(6, userReg.getContact());
                myStmt.setString(7, userReg.getLocation());
                myStmt.setInt(8, userReg.getUser_Id());
                myStmt.execute();
            }


        }catch (SQLIntegrityConstraintViolationException e){
            System.out.println("This is error: "+e);
            String ErrorSql= String.valueOf(e);
            if(ErrorSql.contains("Email_UNIQUE")){
                error ="Error Email";
            }

            error="You have "+e;
            System.out.println("This "+error);
        } finally {
            close(myConn,myStmt,null);
        }
        System.out.println("error "+error);
        return error;

    }

    public List<user> loginUser(String email, String password,String action) throws Exception{
        List<user> login=new ArrayList<>();
        Connection myConn=null;
        PreparedStatement myStmt=null;
        ResultSet myRS=null;
        String em=null;
        try {
            myConn = dataSource.getConnection();
            String sql;

            if (action.equals("Admin")) {
                System.out.println("thiss this");
                em="Admin";
                sql = "select * from user where not `User Type`='Client'";
                myStmt = myConn.prepareStatement(sql);
            } else {
                em="Users";
                sql = "select * from user where Email=?";
                myStmt = myConn.prepareStatement(sql);
                myStmt.setString(1, email);
            }


            myRS = myStmt.executeQuery();
            while (myRS.next()) {
                int id = myRS.getInt("User Id");
                String userType = myRS.getString("User Type");
                String firstName = myRS.getString("First Name");
                String lastName = myRS.getString("Last Name");
                email = myRS.getString("Email");
                int omang = myRS.getInt("Omang");
                String contact = myRS.getString("Contact");
                String location = myRS.getString("Location");
                String PasswordOG = myRS.getString("Password");

                user login2;



                     if(password.equals("None")){
                         String addRoles = myRS.getString("Add Roles");
                         System.out.println("Add_Roles "+addRoles);
                        login2 = new user(id, firstName, lastName, email, userType, omang, contact, addRoles,location);
                        login.add(login2);
                    }else {
                         System.out.println("Password "+password);
                        boolean matched = hash.validatePassword(password, PasswordOG);
                        login2 = new user(id, firstName, lastName, email, userType, password, omang, contact, location, "just");
                        login.add(login2);
                        if (!matched && !em.equals("Admin")) {
                            login.clear();
                        }
                    }



            }
        }
        finally {
            close(myConn,myStmt,myRS);
        }

        return login;

    }

    public company_Information registerCompany(company_Information registerCompany, String action) throws Exception{

        company_Information viewRegisteredCompany=null;
        Connection myConn=null;
        PreparedStatement myStmt=null;
        ResultSet myRS=null;
        try {
            myConn=dataSource.getConnection();
            String sql2=null;
            System.out.println("Action "+action);
            if(action.equals("Registration")){
                sql2="INSERT INTO `company_information` (`User Id`, " +
                        "`Company_Name`, `Company_Email`, `Street Address`,`Street Address2`, `Region`, `City/Town/Village`, " +
                        "`Plot Number`, `Ward`, `Telephone`, `Fax Number`, `Phone Number`, `Date Unix`," +
                        " `Company License Status`, `Company Status`, `Current Status`) VALUES (?,?,?,?,?" +
                        ",?,?,?,?,?" +
                        ",?,?,?,?,?,?)";

                myStmt=myConn.prepareStatement(sql2);

                myStmt.setInt(1, registerCompany.getUser_Id());
                myStmt.setString(2,registerCompany.getCompany_Name());
                myStmt.setString(3,registerCompany.getEmail());
                myStmt.setString(4,registerCompany.getStreet_Address());
                myStmt.setString(5,registerCompany.getStreet_Address2());
                myStmt.setString(6,registerCompany.getRegion());
                myStmt.setString(7,registerCompany.getRegion_Town_Village());
                myStmt.setString(8,registerCompany.getPlot_Number());
                myStmt.setString(9,registerCompany.getWard());
                myStmt.setString(10,registerCompany.getTelephone());
                myStmt.setString(11, registerCompany.getFax_Number());
                myStmt.setString(12, registerCompany.getPhone_Number());
                myStmt.setString(13, registerCompany.getDate_Unix());
                myStmt.setString(14, registerCompany.getCompany_License_Status());
                myStmt.setString(15,registerCompany.getCompany_Status());
                myStmt.setString(16,"UpToDate" );
            }else {
                System.out.println("www");
                sql2="Update `company_information` set  `Company_Name`='"+registerCompany.getCompany_Name()+"'," +
                        " `Company_Email`='"+registerCompany.getEmail()+"', " +
                        " `Street Address`='"+registerCompany.getStreet_Address()+"', " +
                        "`Street Address2`='"+registerCompany.getStreet_Address2()+"', " +
                        "`Region`='"+registerCompany.getRegion()+"', `City/Town/Village`='"+registerCompany.getRegion_Town_Village()+"'," +
                        " `Plot Number`='"+registerCompany.getPlot_Number()+"', `Ward`='"+registerCompany.getWard()+"', " +
                        "`Telephone`='"+registerCompany.getTelephone()+"', `Fax Number`='"+registerCompany.getFax_Number()+"', " +
                        "`Phone Number`='"+registerCompany.getPhone_Number()+"', `Company Status`='"+registerCompany.getCompany_Status()+"' where `Company Id`="+registerCompany.getCompany_Id();
                myStmt=myConn.prepareStatement(sql2);
                System.out.println("eee");
            }



            myStmt.execute();
            int user_id=registerCompany.getUser_Id();
            String sql3;
            if(action.equals("Registration")){
                sql3="select * from `company_information` where `Company Id`=LAST_INSERT_ID()";
            }else {
                sql3="select * from `company_information` where `Company Id`="+registerCompany.getCompany_Id();
            }

            myStmt=myConn.prepareStatement(sql3);
            myRS=myStmt.executeQuery();
            while(myRS.next()){
                int id=myRS.getInt("Company Id");
                String companyName=myRS.getString("Company_Name");
                viewRegisteredCompany=getCompanyDetails(id);
                System.out.println(" This is the company Id :"+id);
            }
            ;
            //Run the getCompanyInfo


        } catch (SQLIntegrityConstraintViolationException sqlI){
            System.out.println("This is error: "+sqlI);
            String ErrorSql= String.valueOf(sqlI);
            if(ErrorSql.contains("Email_UNIQUE")){
                viewRegisteredCompany=new company_Information("Error Email");
            }
            if(ErrorSql.contains("Name_UNIQUE")){
                viewRegisteredCompany=new company_Information("Error Name");
            }
        }finally {
            close(myConn,myStmt,myRS);
        }
        return viewRegisteredCompany;
    }

    public List<company_Information> getAllCompanies(int userId, String userType, String Branch) throws Exception {
            List<company_Information> getCompanyDetail = new ArrayList<>();
            Connection myConn=null;
            ResultSet myRs=null;
            PreparedStatement myStmt=null;


            try {
                //get a connectio
                String sql=null;
                myConn=dataSource.getConnection();

                if(userType.equals("Client")){
                    sql ="Select * from company_information where `User Id`="+userId+";";
                }else{

                    System.out.println("application_status " +userType);
                    sql ="SELECT * FROM application_status a left join vehicle v on" +
                            " a.`Chase Number`=v.`Chase_Number` left join company_information c on " +
                            "v.`Company Id`=c.`Company Id` where a.`Current Office`='"+userType+"' and " +
                            "a.`Status Of Application`='UptoDate' and c.`Region`='"+Branch+"' and not v.`StatusV`='Company is Revoked';";
                }


                myStmt=myConn.prepareStatement(sql);
                myRs=myStmt.executeQuery();
                System.out.println("application_status " +myStmt);

                //process result set
                while(myRs.next()) {
                    //retrieve data from the result set
                    int id=myRs.getInt("Company Id");
                    String companyName=myRs.getString("Company_Name");
                    String Com_email = myRs.getString("Company_Email");
                    String City_Town_Village = myRs.getString("City/Town/Village");
                    String plot_number = myRs.getString("Plot Number");
                    String ward = myRs.getString("Ward");
                    String telephone = myRs.getString("Telephone");
                    String fax = myRs.getString("Fax Number");
                    String phone_number = myRs.getString("Phone Number");
                    String date = myRs.getString("Date Unix");
                    String Status = myRs.getString("Company status");
                    String Street_address = myRs.getString("Street Address");


                    int count=0;
                    for(int i=0; i<companyName.length(); i++){
                        if(companyName.charAt(i)!='\0'){
                            count++;
                        }
                    }
                    if(count>=19){
                        companyName=companyName.substring(0, 19)+"...";
                    }

                    long unixSeconds = Long.parseLong(date);
                    Date dateinMi = new Date(unixSeconds*1000L);
                    SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss z");
                    sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT-4"));

                    Timestamp timestamp = new Timestamp(unixSeconds);
                    Date dateMi = new Date(timestamp.getTime());
                    String formattedDate=sdf.format(dateMi);
                    company_Information registerCompany=null;
                    if(userType.equals("Client")){

                        registerCompany=new company_Information(id,userId, companyName, Com_email,City_Town_Village, plot_number,ward, telephone, fax, phone_number, Status, formattedDate,Street_address);

                    }else{
                        String Chassis = myRs.getString("Chase Number");
                        String Apply_id = myRs.getString("Application Status Id");
                        String  formattedDate2=myRs.getString("Unix Application Date");
                        registerCompany=new company_Information(id,userId, companyName, Com_email,
                                City_Town_Village, plot_number,ward, telephone, fax, phone_number,
                                Status, formattedDate,Street_address,formattedDate2,userType,Chassis,Apply_id);
                    }




                    getCompanyDetail.add(registerCompany);
                }
            }finally {

                close(myConn,myStmt,myRs);

            }
            return getCompanyDetail;

    }

    public company_Information getCompanyDetails(int Company_id) throws Exception{
        company_Information getCompanyDetail=null;
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;

        try {
            //get a connectio
            myConn=dataSource.getConnection();
            String sql ="Select * from company_information where `Company Id`="+Company_id;
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();
            while (myRs.next()) {

    //retrieve data from the result set111
    int id = myRs.getInt("User Id");
    String companyName = myRs.getString("Company_Name");
    String Com_email = myRs.getString("Company_Email");
    String Street_address = myRs.getString("Street Address");
    String street_address_line1 = myRs.getString("Street Address2");
    String City_Town_Village = myRs.getString("City/Town/Village");
    String region = myRs.getString("Region");
    String plot_number = myRs.getString("Plot Number");
    String ward = myRs.getString("Ward");
    String telephone = myRs.getString("Telephone");
    String fax = myRs.getString("Fax Number");
    String phone_number = myRs.getString("Phone Number");
    String date = myRs.getString("Date Unix");
    String Status = myRs.getString("Company status");
    String Company_Licence_Status = myRs.getString("Company License Status");
    System.out.println("this is :"+id);

    getCompanyDetail = new company_Information( Company_id,id, companyName, Com_email,
            Street_address, street_address_line1, City_Town_Village, region, plot_number,
            ward, telephone, fax, phone_number, Status, date, Company_Licence_Status);
}

        }finally {

            close(myConn,myStmt,myRs);

        }
        return getCompanyDetail;

    }

    public void EmployeeRegistration(company_personnel companyPersonnel, String action) throws Exception{
        Connection myConn=null;
        PreparedStatement myStmt=null;
        try {
            myConn=dataSource.getConnection();
            System.out.println("this is the action P :"+action);
            String sql=null;
            if(action.equals("RegisteringEmployee")){
                sql="INSERT INTO `company_personnel` (`Company Id`, `First Name`, `Last Name`, `Job Title`, " +
                        "`Qualification`, `Trained In Waste Management`, `Employee Status`,`Contact`) VALUES (?,?,?,?,?,?,?,?)";
                myStmt=myConn.prepareStatement(sql);
                myStmt.setInt(1,companyPersonnel.getCompany_Id());
                myStmt.setString(2,companyPersonnel.getFirst_Name());
                myStmt.setString(3,companyPersonnel.getLast_Name());
                myStmt.setString(4,companyPersonnel.getJob_Title());
                myStmt.setString(5,companyPersonnel.getQualification());
                myStmt.setString(6,companyPersonnel.getTrained_In_Waste_Management());
                myStmt.setString(7,companyPersonnel.getEmployee_Status());
                myStmt.setString(8,companyPersonnel.getContact());
            }else{
                sql="Update company_personnel set" +
                        " `First Name`='"+companyPersonnel.getFirst_Name()+"'," +
                        " `Last Name`='"+companyPersonnel.getLast_Name()+"'," +
                        " `Job Title`='"+companyPersonnel.getJob_Title()+"'," +
                        " `Qualification`='"+companyPersonnel.getQualification()+"', " +
                        "`Trained In Waste Management`='"+companyPersonnel.getTrained_In_Waste_Management()+"', " +
                        "`Contact`='"+companyPersonnel.getContact()+"' " +
                        "where `Company Personnel Id`="+companyPersonnel.getCompany_Personnel_Id();
                myStmt=myConn.prepareStatement(sql);
            }


            myStmt.execute();
        }finally {
            close(myConn,myStmt,null);
        }
    }

    public List<company_personnel> getAllEmployees(int company_id) throws Exception {
        List<company_personnel> getEmployees = new ArrayList<>();
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        try {
            myConn=dataSource.getConnection();
            String sql ="Select * from `company_personnel` where `Company Id`="+company_id;
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            while(myRs.next()) {
                //retrieve data from the result set
                String  fname=myRs.getString("First Name");
                String Sname=myRs.getString("Last Name");
                String Title=myRs.getString("Job Title");
                String qualification=myRs.getString("Qualification");
                String training=myRs.getString("Trained In Waste Management");
                int personnel_id=myRs.getInt("Company Personnel Id");
                String Contact=myRs.getString("Contact");

                company_personnel registerCompany=new company_personnel(personnel_id,fname,Sname,Title,qualification,training,Contact);

                getEmployees.add(registerCompany);
            }


        }finally {
            close(myConn,myStmt,myRs);
        }
        return getEmployees;
    }

    public String registerVehicle(vehicle vehicleRegistration,String action,String addAction) throws Exception {
        Connection myConn=null;
        // Statement myStmt=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        String errorMsg = "Success";
        try {
            //get a connection
            myConn=dataSource.getConnection();
            String sql=null;
            if(action.equals("EditingVehicle")){
                sql ="update vehicle set `Chase_Number`=?, `Vehicle Type`=?," +
                        " `Unladen Weight`=?, `Waste Type`=?, `Annual Quantity`=?," +
                        " `Type Of Waste Covered During Transportation`=?, `Carrier Number`=?" +
                        " where `Chase_Number`=?";
                myStmt=myConn.prepareStatement(sql);
                myStmt.setString(1,vehicleRegistration.getChase_number());
                myStmt.setString(2,vehicleRegistration.getVehicle_type());
                myStmt.setString(3,vehicleRegistration.getUnladen_Weight());
                myStmt.setString(4,vehicleRegistration.getWaste_Type());
                myStmt.setString(5,vehicleRegistration.getAnnual_Quantity());
                myStmt.setString(6,vehicleRegistration.getType_Of_Waste_covered_during_Transportation());
                myStmt.setString(7,vehicleRegistration.getCarrie_number());
                myStmt.setString(8,vehicleRegistration.getChase_number());

            }else if(action.equals("RegisteringVehicle")){
                sql ="INSERT INTO `vehicle` (`Chase_Number`, `Company Id`, `Vehicle Type`," +
                        " `Unladen Weight`, `Waste Type`, `Annual Quantity`, `Type Of Waste Covered During Transportation`," +
                        " `Carrier Number`, `BA Permit`, `Certification Of Cooperation`, `Payment Receipt`, `Facility Licence`," +
                        " `Hazardous Waste`, `Training On Health And Safety`, `Fire Fighting And First Aid`, `Health And Environment`, " +
                        "`Road_Worthiness`, `Blue_Book`, `Affidavit` , `PrDP_att`, `Owner` , `StatusV` ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                myStmt=myConn.prepareStatement(sql);
                myStmt.setString(1,vehicleRegistration.getChase_number());
                myStmt.setInt(2,vehicleRegistration.getCompany_Id());
                myStmt.setString(3,vehicleRegistration.getVehicle_type());
                myStmt.setString(4,vehicleRegistration.getUnladen_Weight());
                myStmt.setString(5,vehicleRegistration.getWaste_Type());
                myStmt.setString(6,vehicleRegistration.getAnnual_Quantity());
                myStmt.setString(7,vehicleRegistration.getType_Of_Waste_covered_during_Transportation());
                myStmt.setString(8,vehicleRegistration.getCarrie_number());

                myStmt.setString(9,vehicleRegistration.getBA_permit());
                myStmt.setString(10,vehicleRegistration.getCertification_of_Cooperation());
                myStmt.setString(11,vehicleRegistration.getPayment_receipt());
                myStmt.setString(12,vehicleRegistration.getFacility_Licence());
                myStmt.setString(13,vehicleRegistration.getHazardous_waste());
                myStmt.setString(14,vehicleRegistration.getTraining_on_health_and_safety());

                myStmt.setString(15,vehicleRegistration.getFire_fighting_and_first_aid());
                myStmt.setString(16,vehicleRegistration.getHealth_and_Environment());
                myStmt.setString(17,vehicleRegistration.getRoad_Wortiness());
                myStmt.setString(18,vehicleRegistration.getBlue_book());
                myStmt.setString(19,vehicleRegistration.getAffidavit());
                myStmt.setString(20,vehicleRegistration.getPrPD());
                myStmt.setString(21,vehicleRegistration.getOwn());
                myStmt.setString(22,"Pending");
            } else if(action.equals("EditingAttachment")){
                if(addAction.equals("EditingVehicleAttachment")){
                    sql ="update vehicle set `Affidavit`=? ,`BA Permit`=?," +
                            " `Payment Receipt`=?, `Facility Licence`=?," +
                            " `PrDP_att`=?, `Blue_Book`=?" +
                            " where `Chase_Number`=?";
                }else{
                    sql ="update vehicle set `Road_Worthiness`=?, `Certification Of Cooperation`=?," +
                            " `Hazardous Waste`=?, `Training On Health And Safety`=?,  " +
                            "  `Fire Fighting And First Aid`=?  `Health And Environment`=?" +
                            " where `Chase_Number`=?";
                }
                myStmt=myConn.prepareStatement(sql);
                myStmt.setString(1,vehicleRegistration.getRoad_Wortiness());
                myStmt.setString(2,vehicleRegistration.getCertification_of_Cooperation());
                myStmt.setString(3,vehicleRegistration.getHazardous_waste());
                myStmt.setString(4,vehicleRegistration.getTraining_on_health_and_safety());
                myStmt.setString(5,vehicleRegistration.getFire_fighting_and_first_aid());
                myStmt.setString(6,vehicleRegistration.getHealth_and_Environment());
                myStmt.setString(7,vehicleRegistration.getChase_number());

            }



            myStmt.execute();

        }catch (SQLIntegrityConstraintViolationException sqlError) {
            String error=sqlError.toString();
            if(error.contains("for key 'vehicle.PRIMARY'")){
                errorMsg="Chasse Number Error";
            }else if(error.contains("for key 'vehicle.Carrier Number_UNIQUE'")){
               // errorMsg="Registration Number Error";
                errorMsg="Chasse Number Error";
            }


        }finally
         {
            // close JDBC objects

            close(myConn,myStmt,myRs);

        }
        return errorMsg;
    }

    public List<vehicle> getVehicleDetails(String company_id,String User_type) throws Exception {

        List<vehicle> getVehicleDetail = new ArrayList<>();
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;

        try {
            //get a connectio

            myConn=dataSource.getConnection();
            String sql = null;
            if(User_type.equals("Waste Management Officer")){
                sql ="Select * from vehicle where `Chase_Number`='"+company_id+"'";
            }else{
                int Company_id= Integer.parseInt(company_id);
                sql ="Select * from vehicle where `Company Id`="+Company_id;
            }
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            //process result set
            while(myRs.next()) {
                //retrieve data from the result set
               vehicle setVehicleDetail=VehicleDetail(myRs);

                getVehicleDetail.add(setVehicleDetail);
            }
        }finally {

            close(myConn,myStmt,myRs);

        }
        return getVehicleDetail;

    }

    public vehicle VehicleDetailForLicense(String  chase_number) throws Exception{
        vehicle setVehicleDetail=null;
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        try {
            //get a connectio

            myConn=dataSource.getConnection();
            String sql ="Select * from vehicle where `Chase_Number`='"+chase_number+"'";
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

        while(myRs.next()) {
            //retrieve data from the result set
            setVehicleDetail=VehicleDetail(myRs);

        }

        }finally {

            close(myConn,myStmt,myRs);

        }
        return setVehicleDetail;
    }


    public vehicle VehicleDetail(ResultSet myRs) throws SQLException {
        String chase_number=myRs.getString("Chase_Number");
        String Vehicle_Type=myRs.getString("Vehicle Type");
        String Unladen=myRs.getString("Unladen Weight");
        String Waste_Type=myRs.getString("Waste Type");
        String Annual=myRs.getString("Annual Quantity");
        String Transportation=myRs.getString("Type Of Waste Covered During Transportation");
        String Carrier_NO=myRs.getString("Carrier Number");
        String Own=myRs.getString("Owner");
        String Status=myRs.getString("StatusV");
        System.out.println("Problem is Here :"+Status);
        return new vehicle(chase_number,Vehicle_Type,Unladen,Waste_Type,Annual,Transportation,Carrier_NO,Own,Status);
    }

    public vehicle getAttachments(String chassis_no) throws Exception {
        vehicle Attachment=null;
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;

        try {
            System.out.println("this is Chassis :"+chassis_no+" 11");
            myConn = dataSource.getConnection();
            String sql = "Select * from vehicle where `Chase_Number`='" +chassis_no+"'";
            myStmt = myConn.prepareStatement(sql);
            myRs = myStmt.executeQuery();
            System.out.println("this is Chassis :"+chassis_no+" 22");
            while (myRs.next()) {
                System.out.println("this is Chassis :"+chassis_no+" thhh");
                String BA_permit=myRs.getString("BA Permit");
                String Payment_receipt=myRs.getString("Payment Receipt");
                String Certification_of_Cooperation=myRs.getString("Certification Of Cooperation");
                String Facility_Licence=myRs.getString("Facility Licence");
                String PrPD=myRs.getString("PrDP_att");
                String hazardous_waste=myRs.getString("Hazardous Waste");
                String training_on_health_and_safety=myRs.getString("Training On Health And Safety");
                String Fire_fighting_and_first_aid=myRs.getString("Fire Fighting And First Aid");
                String Health_and_Environment=myRs.getString("Health And Environment");
                String Road_Worthiness=myRs.getString("Road_Worthiness");
                String Blue_Book=myRs.getString("Blue_Book");
                String Affidavit=myRs.getString("Affidavit");



                Attachment = new vehicle(chassis_no,
                        BA_permit,Payment_receipt,
                        Certification_of_Cooperation,Facility_Licence,PrPD,
                        hazardous_waste,training_on_health_and_safety,
                        Fire_fighting_and_first_aid,Health_and_Environment,Road_Worthiness,Blue_Book,Affidavit);


            }
        }finally {

            close(myConn,myStmt,myRs);

        }
        return Attachment;

    }

    public List<vehicle> getPendingApplication(int company_id) throws Exception {
        List<vehicle> getPendingAppliaction = new ArrayList<>();
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;

        try {
            //get a connectio

            myConn=dataSource.getConnection();
            String sql ="Select * from vehicle where `Company Id`="+company_id+" and `StatusV` in ('Pending','Declined')";
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            //process result set
            while(myRs.next()) {
                //retrieve data from the result set
                String chase_number=myRs.getString("Chase_Number");
                String Carrier_NO=myRs.getString("Carrier Number");


                vehicle setPendingApplication=new vehicle(chase_number,Carrier_NO);

                getPendingAppliaction.add(setPendingApplication);
            }
        }finally {

            close(myConn,myStmt,myRs);

        }
        return getPendingAppliaction;
    }

    public void ApplyForLicence(String s) throws Exception{
        Connection myConn=null;
        PreparedStatement myStmt=null;
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String ApplicationDate= String.valueOf(timestamp.getTime());
        try {
            myConn = dataSource.getConnection();
            String sql2 = "INSERT INTO `application_status` (`Level`, `Current Office`, `Chase Number`, `Unix Application Date`, `Status Of Application`) VALUES (?,?,?,?,?)";
            myStmt = myConn.prepareStatement(sql2);
            myStmt.setString(1,"stage 1");
            myStmt.setString(2, "Compliance Officer");
            myStmt.setString(3, s);
            myStmt.setString(4, ApplicationDate);
            myStmt.setString(5, "UptoDate");
            myStmt.execute();
            sql2="update vehicle set `StatusV`=? where `Chase_Number`='"+s+"'";
            myStmt=myConn.prepareStatement(sql2);
            myStmt.setString(1,"stage 1");
            myStmt.execute();
        }catch (SQLIntegrityConstraintViolationException e){
            System.out.println("This ");
        } finally {
            close(myConn,myStmt,null);
        }
        System.out.println("error ");

    }

    public void OfficersActions(officerAction setAction, String userType,String vehicle_id,String Company_id,String companyEmail,String companyPhone)throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        try {
            myConn=dataSource.getConnection();
            String sql=null;
                sql = "INSERT INTO `officer_action` (`User Id`, `Application Status Id`, `Action Taken`, `Delay Time`)" +
                        " VALUES (?,?,?,?)";
                myStmt = myConn.prepareStatement(sql);
                myStmt.setInt(1, setAction.getUser_Id());
                myStmt.setInt(2, setAction.getApplication_Status_Id());
                myStmt.setString(3, setAction.getAction_Taken());
                myStmt.setString(4, setAction.getDelay_Time());
                myStmt.execute();
                if(setAction.getAction_Taken().equals("Approving")) {
                    String nextApprove=null;
                    String level=null;
                    switch (userType){
                        case "Compliance Officer":
                            nextApprove="Waste Management Officer";
                            SendEmail.sentEmail(companyEmail);
                            twiltest.sendSms(companyPhone);
                            level="Stage 2";
                            break;
                        case "Waste Management Officer":
                            nextApprove="Regional Coordinate";
                            level="Stage 3";
                            break;
                        case "Regional Coordinate":
                            nextApprove="Waste Management Officer Compliance Headquarters";
                            level="Stage 4";
                            break;
                        case "Waste Management Officer Compliance Headquarters":
                            nextApprove="Head of Division Headquarters";
                            level="Stage 5";
                            break;
                        case "Head of Division Headquarters":
                            nextApprove="Generate licence";
                            level="Generating licence";
                            break;
                        case "Generate licence":
                            nextApprove="licence Generated";
                            level="licenced";
                            break;
                        default:
                            throw new IllegalStateException("Unexpected value: " + nextApprove);
                    }

                    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
                    String ApplicationDate= String.valueOf(timestamp.getTime());
                    System.out.println("This testing Approve :"+setAction.getApplication_Status_Id());
                    System.out.println("This testing Current Office :"+nextApprove);
                        sql = "update application_status set `Level` ='"+level+"' " +
                                ",`Unix Application Date`='"+ApplicationDate+"'" +
                                ", `Current Office`='"+nextApprove+
                                "' where `Application Status Id`="+setAction.getApplication_Status_Id()+"";
                    myStmt = myConn.prepareStatement(sql);
                    myStmt.execute();
                    sql = "update vehicle set `StatusV` ='"+level+
                            "' where `Chase_Number`='"+vehicle_id+"'";
                    myStmt = myConn.prepareStatement(sql);
                    myStmt.execute();
                }else if(setAction.getAction_Taken().equals("Decline")){
                    sql = "update vehicle set `StatusV` ='Declined"+
                            "' where `Chase_Number`='"+vehicle_id+"'";
                    myStmt = myConn.prepareStatement(sql);
                    myStmt.execute();
                    sql = "update application_status set `Status Of Application` ='Declined"+
                            "' where `Chase Number`='"+vehicle_id+"'";
                    myStmt = myConn.prepareStatement(sql);
                    myStmt.execute();
                }else if(setAction.getAction_Taken().equals("Revoke")) {
                    sql = "update company_information set `Current Status` ='Company is Revoked" +
                            "' where `Company Id`='" + Company_id + "'";
                    myStmt = myConn.prepareStatement(sql);
                    System.out.println("See then code :"+myStmt);
                    myStmt.execute();
                    sql = "update vehicle set `StatusV` ='Company is Revoked"+
                            "' where `Company Id`='" + Company_id + "'";
                    myStmt = myConn.prepareStatement(sql);
                    myStmt.execute();
                }
        }finally {
            close(myConn,myStmt,null);
        }
    }

    public void registerInspection(int user_id, String general, String hazardus, String additional) throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        try {
            myConn = dataSource.getConnection();
            String sql2 = "INSERT INTO `dwmpc`.`inspection` (`General Check List`," +
                    " `Addition Check List`, `Hazardous Check List`, `Officer Action Id`) VALUES (?,?,?,?)";
            myStmt = myConn.prepareStatement(sql2);
            myStmt.setString(1,general);
            myStmt.setString(2, additional);
            myStmt.setString(3, hazardus);
            myStmt.setInt(4, user_id);
            myStmt.execute();
        }finally {
            close(myConn,myStmt,null);
        }
    }

    public String setMonthlyReport(Monthly_Report report, String action) throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        String response="Error";
        try {
            myConn = dataSource.getConnection();
            String sql2 = "INSERT INTO `dwmpc`.`Monthly_report` (`Company_id`, `Employee Type`," +
                    " `Citizen Males`, `Citizen Females`," +
                    " `Non-Citizen Males`, `Non-Citizen Females`, `Salary`) VALUES (?,?,?,?,?,?,?)";
            myStmt = myConn.prepareStatement(sql2);
            myStmt.setInt(1,report.getCompany_id());
            myStmt.setString(2, report.getEmployee_Type());
            myStmt.setInt(3, report.getC_M());
            myStmt.setInt(4, report.getC_F());
            myStmt.setInt(5, report.getN_M());
            myStmt.setInt(6, report.getN_F());
            myStmt.setDouble(7, report.getSalary());
            myStmt.execute();
            response="Successful";

        }finally {
            close(myConn,myStmt,null);
        }
        return response;
    }

    public void ReportUptodate(int company_id, String applicationDate, String action) throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        try {
            myConn = dataSource.getConnection();
            String sql2;
                    if(action.equals("Registration")){
                        sql2="INSERT INTO `dwmpc`.`MonthlyReport_Statue` (`Company_Id`,`dateUnix`) VALUES ("+company_id+",'"+applicationDate+"');";
                    }else{
                sql2="UPDATE `dwmpc`.`MonthlyReport_Statue` SET  `dateUnix` = '"+applicationDate+"' WHERE (`Company_Id` = '"+company_id+"');";
            }
            myStmt = myConn.prepareStatement(sql2);
            myStmt.execute();


        }finally {
            close(myConn,myStmt,null);
        }

    }

    public String getMonthlyReport(int company_id) throws Exception {
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        String Statue="Upload";

        try {
            //get a connectio

            myConn=dataSource.getConnection();
            String sql ="SELECT * FROM dwmpc.MonthlyReport_Statue where `Company_Id`="+company_id;
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            //process result set
            while(myRs.next()) {
                //retrieve data from the result set
                String date=myRs.getString("dateUnix");
                    if(!date.equals("There is Null")){
                        long unixSeconds = Long.parseLong(date);
                        SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd MM yyyy");
                        sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT+2"));

                        Timestamp timestamp = new Timestamp(unixSeconds);
                        Date dateMi = new Date(timestamp.getTime());
                        String formattedDate=sdf.format(dateMi);

                        SimpleDateFormat myFormat = new SimpleDateFormat("dd MM yyyy");
                        Date dateCurrent=new Date();
                        String Current=sdf.format(dateCurrent);
                        System.out.println("the first: "+formattedDate+" Second: "+Current);
                        Date dateBefore = myFormat.parse(formattedDate);
                        Date dateAfter = myFormat.parse(Current);
                        long difference = dateAfter.getTime() - dateBefore.getTime();
                        float daysBetween = (difference / (1000*60*60*24));
                        /* You can also convert the milliseconds to days using this method
                         * float daysBetween =
                         *         TimeUnit.DAYS.convert(difference, TimeUnit.MILLISECONDS)
                         */
                        System.out.println("test :"+daysBetween);
                        if(daysBetween>=28){
                            Statue="Upload";
                        }else{
                            Statue="UptoDate";
                        }
                }
            }
        }finally {

            close(myConn,myStmt,myRs);

        }
        System.out.println("Return :"+Statue);
        return Statue;
    }

    public int getReportWaste() throws Exception{
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        int report_id=0;

        try {
            //get a connectio

            myConn=dataSource.getConnection();
            String sql ="select * from dwmpc.Report_Waste_Type ORDER BY `Report_ID` DESC LIMIT 1;";
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            //process result set
            while(myRs.next()) {
                //retrieve data from the result set
                report_id=myRs.getInt("Report_ID");

                if(report_id == 0){
                    report_id=1;
                }
            }
        }finally {

            close(myConn,myStmt,myRs);

        }
        System.out.println("Return :"+report_id);
        return report_id;
    }

    public void setReportWaste(WasteTypeReport wasteTypeReport, String action,int Report_id,String company_name) throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        String companyName=company_name.replace(" ","_");
        System.out.println("testing :"+Report_id);
        try {
            myConn = dataSource.getConnection();
            String sql2;
            if(action.equals("Registration")){
                sql2="INSERT INTO `"+companyName+"` (`Company ID`, `Waste Type`, `Generated Quantity`, `Amount Shipped`, `Return`, `Date Of Report`) VALUES(?,?,?,?,?,?);";
            }else{
                System.out.println("thiis wee");
                sql2="UPDATE `"+companyName+"` SET `Company ID` = ?, `Waste Type` = ?, `Generated Quantity` = ?, `Amount Shipped` = ?, `Return` = ?, `Date Of Report` = ? WHERE (`Report_ID` = '"+Report_id+"');";
            }
            myStmt = myConn.prepareStatement(sql2);
            myStmt.setInt(1,wasteTypeReport.getCompany_Id());
            myStmt.setString(2, wasteTypeReport.getWaste_Type());
            myStmt.setString(3, wasteTypeReport.getGenerated_Quantity());
            myStmt.setString(4, wasteTypeReport.getAmount_Shipped());
            myStmt.setString(5, wasteTypeReport.getReturn());
            myStmt.setString(6, wasteTypeReport.getDate_Of_Report());
            myStmt.execute();



        }finally {
            close(myConn,myStmt,null);
        }
    }

    public void ReportTableCreation(String company_name)throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        String CompanyName=company_name.replace(" ","_");
        try {
            myConn = dataSource.getConnection();
            String sql="CREATE TABLE `dwmpc`.`"+CompanyName+"` (\n" +
                    "  `Report_ID` INT NOT NULL AUTO_INCREMENT,\n" +
                    "  `Company ID` INT NOT NULL,\n" +
                    "  `Waste Type` VARCHAR(45) NULL,\n" +
                    "  `Generated Quantity` VARCHAR(45) NULL,\n" +
                    "  `Amount Shipped` VARCHAR(45) NULL,\n" +
                    "  `Return` VARCHAR(45) NULL,\n" +
                    "  `Date Of Report` VARCHAR(45) NULL,\n" +
                    "  `Date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,\n" +
                    "  PRIMARY KEY (`Report_ID`));";

            myStmt = myConn.prepareStatement(sql);
            myStmt.execute();


        }finally {
            close(myConn,myStmt,null);
        }
    }

    public int getReportWaste_lastRow(String company_name) throws Exception {

        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        int report_id=1;
        String CompanyName=company_name.replace(" ","_");

        try {
            //get a connectio

            myConn=dataSource.getConnection();
            String sql ="select * from dwmpc.`"+CompanyName+"` ORDER BY `Report_ID` DESC LIMIT 1;";
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            //process result set
            while(myRs.next()) {
                //retrieve data from the result set
                report_id=myRs.getInt("Report_ID");
                report_id=report_id+1;

                if(report_id == 0){
                    report_id=1;
                }
            }
        }finally {

            close(myConn,myStmt,myRs);

        }
        System.out.println("Return :"+report_id);
        return report_id;
    }

    public CountGeneral CountGe(int user_id) throws Exception {
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        CountGeneral countGeneral;
        int numberCompany=0;
        int numberVehicle=0;
        int numberEmployee=0;

        try {
            myConn=dataSource.getConnection();
            String sql ="SELECT * FROM company_information where `User Id`="+user_id;
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            //process result set
            while(myRs.next()) {
                int companyId=myRs.getInt("Company Id");



                sql="SELECT COUNT(*) FROM vehicle where `Company Id`="+companyId;
                myStmt=myConn.prepareStatement(sql);
                myRs=myStmt.executeQuery();
                while(myRs.next()) {
                    int number=myRs.getInt("COUNT(*)");
                    numberVehicle=numberVehicle+number;
                }
                sql="SELECT COUNT(*) FROM company_personnel where `Company Id`="+companyId;
                myStmt=myConn.prepareStatement(sql);
                myRs=myStmt.executeQuery();
                while(myRs.next()) {
                    int number=myRs.getInt("COUNT(*)");
                    numberEmployee=numberEmployee+number;
                }


            }
            sql="SELECT COUNT(*) FROM company_information where `User Id`="+user_id;
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();
            while(myRs.next()) {
                numberCompany=myRs.getInt("COUNT(*)");
            }
            System.out.println("Company: "+numberCompany+" Vehicle :"+numberVehicle+" Employee: "+numberEmployee);
            countGeneral=new CountGeneral(numberCompany,numberVehicle,numberEmployee);

        }finally {

            close(myConn,myStmt,myRs);

        }
        return countGeneral;
    }

    public CountGeneral CountSp(int company_id)throws Exception{
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        CountGeneral countGeneral;
        int numberCompany=0;
        int numberVehicle=0;
        int numberEmployee=0;

        try {
            myConn=dataSource.getConnection();
            String sql ="SELECT * FROM company_information where `Company Id`="+company_id;
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            //process result set
            while(myRs.next()) {
                int user_id=myRs.getInt("User Id");

                sql="SELECT COUNT(*) FROM company_information where `User Id`="+user_id;
                myStmt=myConn.prepareStatement(sql);
                myRs=myStmt.executeQuery();
                while(myRs.next()) {
                    numberCompany=myRs.getInt("COUNT(*)");
                }

            }
            sql="SELECT COUNT(*) FROM vehicle where `Company Id`="+company_id;
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();
            while(myRs.next()) {
                numberVehicle=myRs.getInt("COUNT(*)");
            }
            sql="SELECT COUNT(*) FROM company_personnel where `Company Id`="+company_id;
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();
            while(myRs.next()) {
                numberEmployee=myRs.getInt("COUNT(*)");
            }

            System.out.println("Company: "+numberCompany+" Vehicle :"+numberVehicle+" Employee: "+numberEmployee);
            countGeneral=new CountGeneral(numberCompany,numberVehicle,numberEmployee);

        }finally {

            close(myConn,myStmt,myRs);

        }
        return countGeneral;
    }

    public Add_statues getAdditionalRole(int user_id) throws Exception{
        Add_statues add_statues = null;
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        CountGeneral countGeneral;

        try {
            //get a connectio

            myConn=dataSource.getConnection();
            String sql ="select * from dwmpc.`add_role` where `user id`="+user_id+" ;";
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            //process result set
            while(myRs.next()) {

               String  add_Roles=myRs.getString("add roles");
                String  current=myRs.getString("current role");
                String  default1=myRs.getString("default role");
               add_statues=new Add_statues(user_id,add_Roles,current,default1);
            }
        }finally {

            close(myConn,myStmt,myRs);

        }
        return add_statues;

    }

    public void currentUserType(String userType, int user_id) throws Exception {
        Connection myConn=null;
        PreparedStatement myStmt=null;
        try {
            System.out.println("This Error");
            myConn = dataSource.getConnection();
            String sql2 = "UPDATE `dwmpc`.`add_role` SET `current role` = '"+userType+"' WHERE `user id` = "+user_id+"";
            myStmt = myConn.prepareStatement(sql2);
            myStmt.execute();
        }finally {
            close(myConn,myStmt,null);
        }
    }

    public List<Licence_Table> getAllLicense() throws Exception{
        List<Licence_Table> licence_tables=new ArrayList<>();
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;

        try {
            //get a connection
            myConn=dataSource.getConnection();
            String sql ="SELECT * FROM dwmpc.license g left join vehicle v on g.`Registration_Number`=v.`Carrier Number`left join application_status a on a.`Chase Number`=v.`Chase_Number` left join company_information c on c.`Company Id`=v.`Company Id`  GROUP BY `License Id` ORDER BY `License Id`";
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            //process result set
            while(myRs.next()) {

                Licence_Table licence_table=getAllLicenseWhileLoop(myRs);
                licence_tables.add(licence_table);

            }
        }finally {

            close(myConn,myStmt,myRs);

        }
        return licence_tables;
    }

    public Licence_Table getAllLicenseWhileLoop(ResultSet myRs) throws Exception{
            //retrieve data from the result set

        String License_Number = myRs.getString("License_Number");
        String start_date = myRs.getString("Start_Date");
        String end_date = myRs.getString("Expiry_Date");
        String Licence_type = myRs.getString("License_Type");
        String status = myRs.getString("Status");
        String company_Name = myRs.getString("Company_Name");
        String Registration_Number = myRs.getString("Registration_Number");
        String companyEmail = myRs.getString("Company_Email");
        String company_id = myRs.getString("Company Id");
        String company_phone = myRs.getString("Phone Number");
        String apply_id = myRs.getString("Application Status Id");


        return new Licence_Table(Registration_Number, start_date, end_date, Licence_type, status, company_Name, License_Number,companyEmail,company_phone,company_id,apply_id);

        }


    public Licence_Table getAllLicenseSearch(String license_Number) throws Exception {
        Licence_Table licence_table=null;
        Connection myConn = null;
        ResultSet myRs = null;
        PreparedStatement myStmt = null;

        try {
            myConn=dataSource.getConnection();
            String sql ="SELECT * FROM dwmpc.license g left join vehicle v on g.`Registration_Number`=v.`Carrier Number` left join company_information c on c.`Company Id`=v.`Company Id` where g.`License_Number`= '"+license_Number+"' ;";
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            while(myRs.next()) {

                licence_table=getAllLicenseWhileLoop(myRs);

            }

        }finally {

            close(myConn,myStmt,myRs);

        }
        return licence_table;

    }

}
