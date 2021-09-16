package com.dwmpc.model.DAO;

import com.dwmpc.model.bean.company_Information;
import com.dwmpc.model.bean.company_personnel;
import com.dwmpc.model.bean.user;
import com.dwmpc.model.bean.vehicle;

import javax.sql.DataSource;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class ConnectionUtil {
    private final DataSource dataSource;


    //constructor
    public ConnectionUtil(DataSource theDataSource) {
        dataSource=theDataSource;

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

    public String registerUser(user userReg) throws Exception{
        Connection myConn=null;
        PreparedStatement myStmt=null;
        String error="Successful";
        try {
            myConn = dataSource.getConnection();
            String sql2 = "Insert user (`First Name`, `Last Name`, `Email`, `User Type`, `Password`, `Omang`, `Contact`,`Location`) values(?,?,?,?,?,?,?,?)";
            myStmt = myConn.prepareStatement(sql2);
            myStmt.setString(1, userReg.getFirst_name());
            myStmt.setString(2, userReg.getLast_name());
            myStmt.setString(3, userReg.getEmail());
            myStmt.setString(4, userReg.getUser_type());
            myStmt.setString(5, userReg.getPassword());
            myStmt.setInt(6, userReg.getOmang());
            myStmt.setInt(7, userReg.getContact());
            myStmt.setString(8, userReg.getLocation());
            myStmt.execute();
        }catch (SQLIntegrityConstraintViolationException e){
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
        try {
            myConn=dataSource.getConnection();
            String sql;
            if(action.equals("getOfficerInfo")){
                sql="select * from user where not UserType='Client'";
                myStmt=myConn.prepareStatement(sql);
            }else {
                sql="select * from user where Email=?";
                myStmt=myConn.prepareStatement(sql);
                myStmt.setString(1,email);
            }


            myRS=myStmt.executeQuery();
            while (myRS.next()) {
                int id=myRS.getInt("User Id");
                String userType=myRS.getString("User Type");
                String firstName=myRS.getString("First Name");
                String lastName=myRS.getString("Last Name");
                email=myRS.getString("Email");
                int omang=myRS.getInt("Omang");
                int contact=myRS.getInt("Contact");
                String location=myRS.getString("Location");
                user login2=new user(id,firstName,lastName,email,userType,password,omang,contact,location);
                login.add(login2);
            }
        }finally {
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
            if(action.equals("Registration")){
                sql2="INSERT INTO `dwmpc1.0`.`company_information` (`User Id`, " +
                        "`Company Name`, `Company Email`, `Street Address`,`Street Address2`, `Region`, `City/Town/Village`, " +
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
                sql2="Update `dwmpc1.0`.`company_information` set  `Company Name`='"+registerCompany.getCompany_Name()+"'," +
                        " `Company Email`='"+registerCompany.getEmail()+"', " +
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
                sql3="select * from `dwmpc1.0`.`company_information` where `Company Id`=LAST_INSERT_ID()";
            }else {
                sql3="select * from `dwmpc1.0`.`company_information` where `Company Id`="+registerCompany.getCompany_Id();
            }

            myStmt=myConn.prepareStatement(sql3);
            myRS=myStmt.executeQuery();
            while(myRS.next()){
                int id=myRS.getInt("Company Id");
                String companyName=myRS.getString("Company Name");
                viewRegisteredCompany=getCompanyDetails(id);
                System.out.println(" This is the company Id :"+id);
            }
            ;
            //Run the getCompanyInfo


        }finally {
            close(myConn,myStmt,myRS);
        }
        return viewRegisteredCompany;
    }

    public List<company_Information> getAllCompanies(int userId) throws Exception {
            List<company_Information> getCompanyDetail = new ArrayList<>();
            Connection myConn=null;
            ResultSet myRs=null;
            PreparedStatement myStmt=null;

            try {
                //get a connectio

                myConn=dataSource.getConnection();
                String sql ="Select * from company_information where `User Id`="+userId;
                myStmt=myConn.prepareStatement(sql);
                myRs=myStmt.executeQuery();

                //process result set
                while(myRs.next()) {
                    //retrieve data from the result set
                    int id=myRs.getInt("Company Id");
                    String companyName=myRs.getString("Company Name");

                    company_Information registerCompany=new company_Information(id,userId,companyName);

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
    //retrieve data from the result set
    int id = myRs.getInt("Company Id");
    String companyName = myRs.getString("Company Name");
    String Com_email = myRs.getString("Company Email");
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

    getCompanyDetail = new company_Information(id, Company_id, companyName, Com_email,
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
                sql="INSERT INTO `dwmpc1.0`.`company_personnel` (`Company Id`, `First Name`, `Last Name`, `Job Title`, " +
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

    public void registerVehicle(vehicle vehicleRegistration,String action,String addAction) throws Exception {
        Connection myConn=null;
        // Statement myStmt=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;
        try {
            //get a connection
            myConn=dataSource.getConnection();
            String sql=null;
            if(action.equals("EditingVehicle")){
                sql ="update vehicle set `Chase Number`=?, `Vehicle Type`=?," +
                        " `Unladen Weight`=?, `Waste Type`=?, `Annual Quantity`=?," +
                        " `Type Of Waste Covered During Transportation`=?, `Carrier Number`=?" +
                        " where `Chase Number`=?";
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
                sql ="INSERT INTO `dwmpc1.0`.`vehicle` (`Chase Number`, `Company Id`, `Vehicle Type`," +
                        " `Unladen Weight`, `Waste Type`, `Annual Quantity`, `Type Of Waste Covered During Transportation`," +
                        " `Carrier Number`, `BA Permit`, `Certification Of Cooperation`, `Payment Receipt`, `Facility Licence`," +
                        " `Hazardous Waste`, `Training On Health And Safety`, `Fire Fighting And First Aid`, `Health And Environment`, " +
                        "`Road_Worthiness`, `Blue_Book`, `Affidavit` , `PrDP_att`, `Owner` ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
            } else if(action.equals("EditingAttachment")){
                if(addAction.equals("EditingVehicleAttachment")){
                    sql ="update vehicle set `Affidavit`=? ,`BA Permit`=?," +
                            " `Payment Receipt`=?, `Facility Licence`=?," +
                            " `PrDP_att`=?, `Blue_Book`=?" +
                            " where `Chase Number`=?";
                }else{
                    sql ="update vehicle set `Road_Worthiness`=?, `Certification Of Cooperation`=?," +
                            " `Hazardous Waste`=?, `Training On Health And Safety`=?,  " +
                            "  `Fire Fighting And First Aid`=?  `Health And Environment`=?" +
                            " where `Chase Number`=?";
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

        }finally {
            // close JDBC objects

            close(myConn,myStmt,myRs);

        }
    }

    public List<vehicle> getVehicleDetails(int company_id) throws Exception {

        List<vehicle> getVehicleDetail = new ArrayList<>();
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;

        try {
            //get a connectio

            myConn=dataSource.getConnection();
            String sql ="Select * from vehicle where `Company Id`="+company_id;
            myStmt=myConn.prepareStatement(sql);
            myRs=myStmt.executeQuery();

            //process result set
            while(myRs.next()) {
                //retrieve data from the result set
                String chase_number=myRs.getString("Chase Number");
                String Vehicle_Type=myRs.getString("Vehicle Type");
                String Unladen=myRs.getString("Unladen Weight");
                String Waste_Type=myRs.getString("Waste Type");
                String Annual=myRs.getString("Annual Quantity");
                String Transportation=myRs.getString("Type Of Waste Covered During Transportation");
                String Carrier_NO=myRs.getString("Carrier Number");
                String Own=myRs.getString("Owner");

                vehicle setVehicleDetail=new vehicle(chase_number,Vehicle_Type,Unladen,Waste_Type,Annual,Transportation,Carrier_NO,Own);

                getVehicleDetail.add(setVehicleDetail);
            }
        }finally {

            close(myConn,myStmt,myRs);

        }
        return getVehicleDetail;

    }

    public vehicle getAttachments(String chassis_no) throws Exception {
        vehicle Attachment=null;
        Connection myConn=null;
        ResultSet myRs=null;
        PreparedStatement myStmt=null;

        try {
            System.out.println("this is Chassis :"+chassis_no+" 11");
            myConn = dataSource.getConnection();
            String sql = "Select * from vehicle where `Chase Number`='" +chassis_no+"'";
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
}
