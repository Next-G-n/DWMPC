package com.dwmpc.controller;
import javax.servlet.annotation.MultipartConfig;

import com.dwmpc.model.DAO.ConnectionUtil;
import com.dwmpc.model.bean.company_Information;
import com.dwmpc.model.bean.user;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.sql.DataSource;
import java.io.IOException;
import java.security.SecureRandom;
import java.sql.Timestamp;
import java.util.List;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;

@WebServlet(name = "ServletDwmpc", value = "/ServletDwmpc")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 14, // 10 MB

        maxFileSize = 1024 * 1024 * 1000000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000000)   	// 1 GB


public class ServletDwmpc extends HttpServlet {

    private ConnectionUtil connectionUtil;
    @Resource(name = "jdbc/Dwmpc_azureSA")

    private DataSource dataSource;
    int id_user;
    public static int BUFFER_SIZE = 1024 * 100;
    public static final String UPLOAD_DIR = "resources";
    public static String fileName = null;

    @Override
    public void init() throws ServletException {
        // TODO Auto-generated method stub
        super.init();

        try {
            // Create our StudentDBUtil.... and pass in the conn pool/dataSource
            connectionUtil = new ConnectionUtil(dataSource);
        }

        catch (Exception e) {
            throw new ServletException(e);
        }
    }



    //small and insensitive data
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    //large and sensitive data eg password
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String theCommand = request.getParameter("command");

            if (theCommand == null) {

                theCommand = "display_List";
            }
            switch (theCommand) {
                case "Registering_User":
                    User_Registration(request,response);
                    break;
                case "Login":
                    Login(request,response);
                    break;
                case "Company Registration":
                    registerCompany(request,response);
                    break;
            }
            // listStudents(request, response);
        }

        catch (Exception exc) {
            exc.printStackTrace();

        }
    }

    private void registerCompany(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();
        String action=request.getParameter("action");

        int id= Integer.parseInt(request.getParameter("User_id"));
        String companyName=request.getParameter("Company name");
        String Com_email=request.getParameter("Company_Email");
        String Street_address=request.getParameter("Street_Address");
        String street_address_line1=request.getParameter("Street_Address2");
        String City_Town_Village=request.getParameter("City");
        String region=request.getParameter("Region");
        String plot_number=request.getParameter("Plot_Number");
        String ward=request.getParameter("Ward");
        String telephone=request.getParameter("telephone");
        String fax=request.getParameter("fax");
        String phone_number=request.getParameter("Phone_Number");
        String Status=request.getParameter("StatusA");
        String Company_License_Status=request.getParameter("Status");
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String ApplicationDate= String.valueOf(timestamp.getTime());

        int companyId;
        if(action.equals("Registration")){
            companyId=0;
        }else{
            companyId= Integer.parseInt(request.getParameter("company_Id"));
        }


        company_Information registerCompany=new company_Information(companyId,id,companyName,Com_email,
                Street_address,street_address_line1,City_Town_Village,region,plot_number,
                ward,telephone,fax,phone_number,Status,ApplicationDate,Company_License_Status);

        connectionUtil.registerCompany(registerCompany,action);

        List<company_Information> CompanyInfo=connectionUtil.getCompanyDetail(id);
        session.removeAttribute("Company_info");
        session.setAttribute("Company_info", CompanyInfo);


        //request.getRequestDispatcher("index.jsp").forward(request, response);
        response.sendRedirect("index.jsp");

    }

    private void Login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String Email = request.getParameter("email");
        String Password = request.getParameter("password");
        String userType="Unknown";
        String action="Login";
        byte[] salt = getSalt();
        String securePassword = get_SHA_512_SecurePassword(Password, salt);

        List<user> userlg = connectionUtil.loginUser(Email, securePassword,action);
        HttpSession session=request.getSession();
        session.setAttribute("User_Info", userlg);
        int user_id=userlg.get(0).getUser_Id();

        List<company_Information> CompanyInfo=connectionUtil.getCompanyDetail(user_id);


        if(!CompanyInfo.isEmpty()){
            session.setAttribute("Company_info", CompanyInfo);
        }


        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    private void User_Registration(HttpServletRequest request, HttpServletResponse response) throws Exception {


        String firstName=request.getParameter("first_name");
        String lastName=request.getParameter("last_name");
        String email=request.getParameter("email");
        String password=request.getParameter("password");

        byte[] salt = getSalt();
        String securePassword = get_SHA_512_SecurePassword(password, salt);

        int omang= Integer.parseInt(request.getParameter("Omang_code"));
        int contacting= Integer.parseInt(request.getParameter("phone_number").replace("+267 ","").replace(" ",""));
        String UserType=request.getParameter("User_Type");
        String location=request.getParameter("location");

        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date date = new Date();

        user userReg=new user(0,firstName,lastName,email,UserType,securePassword,omang,contacting,location);
        String msg=connectionUtil.registerUser(userReg);
        HttpSession session=request.getSession();
        String action="Registration";


        if(msg.equals("Successful")){
            List<user> userlg = connectionUtil.loginUser(email, securePassword,action);
            session.setAttribute("User_Info", userlg);
            List<company_Information> CompanyInfo=connectionUtil.getCompanyDetail(userlg.get(0).getUser_Id());
            if(CompanyInfo.get(0).getCompany_Name()!=null){
                session.setAttribute("Company_info", CompanyInfo);
            }
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        }else {
            session.setAttribute("ErrorEmail",userReg);
            this.getServletContext().getRequestDispatcher("/SignIn_and_signUp.jsp").forward(request, response);
        }
    }

    //Add salt
    private static byte[] getSalt() throws NoSuchAlgorithmException
    {
        SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
        byte[] salt = new byte[16];
        sr.nextBytes(salt);
        return salt;
    }
    private static String get_SHA_512_SecurePassword(String passwordToHash, byte[] salt)
    {
        //Use MessageDigest md = MessageDigest.getInstance("SHA-512");
        String generatedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            md.update(salt);
            byte[] bytes = md.digest(passwordToHash.getBytes());
            StringBuilder sb = new StringBuilder();
            for(int i=0; i< bytes.length ;i++)
            {
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            generatedPassword = sb.toString();
        }
        catch (NoSuchAlgorithmException e)
        {
            e.printStackTrace();
        }
        return generatedPassword;
    }

}
