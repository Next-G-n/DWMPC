package com.dwmpc.model.DAO;

import com.dwmpc.model.bean.user;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
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
                System.out.println("This is works");
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
}
