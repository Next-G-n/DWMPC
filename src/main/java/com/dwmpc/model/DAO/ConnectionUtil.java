package com.dwmpc.model.DAO;

import com.dwmpc.model.bean.company_Information;
import com.dwmpc.model.bean.user;

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

    public void registerCompany(company_Information registerCompany, String action) throws Exception{

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
                myStmt.setString(16,"Update" );
            }else {
                sql2="Update `dwmpc1.0`.`company_information` set  `Company Name`='"+registerCompany.getCompany_Name()+"'," +
                        " `Company Email`='"+registerCompany.getEmail()+"', " +
                        " `Street Address`='"+registerCompany.getStreet_Address()+"', " +
                        "`Street Address2`='"+registerCompany.getStreet_Address2()+"', " +
                        "`Region`='"+registerCompany.getRegion()+"', `City/Town/Village`='"+registerCompany.getRegion_Town_Village()+"'," +
                        " `Plot Number`='"+registerCompany.getPlot_Number()+"', `Ward`='"+registerCompany.getWard()+"', " +
                        "`Telephone`='"+registerCompany.getTelephone()+"', `Fax Number`='"+registerCompany.getFax_Number()+"', " +
                        "`Phone Number`='"+registerCompany.getPhone_Number()+"', `Company Status`='"+registerCompany.getCompany_Status()+"' where `Company Id`="+registerCompany.getCompany_Id();
                myStmt=myConn.prepareStatement(sql2);
            }



            myStmt.execute();
            //Run the getCompanyInfo


        }finally {
            close(myConn,myStmt,null);
        }
    }

    public List<company_Information> getCompanyDetail(int userId) throws Exception {
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
                    String Com_email=myRs.getString("Company Email");
                    String Street_address=myRs.getString("Street Address");
                    String street_address_line1=myRs.getString("Street Address2");
                    String City_Town_Village=myRs.getString("City/Town/Village");
                    String region=myRs.getString("Region");
                    String plot_number=myRs.getString("Plot Number");
                    String ward=myRs.getString("Ward");
                    String telephone= myRs.getString("Telephone");
                    String fax= myRs.getString("Fax Number");
                    String phone_number= myRs.getString("Phone Number");
                    String date=myRs.getString("Date Unix");
                    String Status=myRs.getString("Company status");
                    String Company_Licence_Status=myRs.getString("Company License Status");

                    company_Information registerCompany=new company_Information(id,userId,companyName,Com_email,
                            Street_address,street_address_line1,City_Town_Village,region,plot_number,
                            ward,telephone,fax,phone_number,Status,date,Company_Licence_Status);

                    getCompanyDetail.add(registerCompany);
                }
            }finally {

                close(myConn,myStmt,myRs);

            }
            return getCompanyDetail;

    }
}
