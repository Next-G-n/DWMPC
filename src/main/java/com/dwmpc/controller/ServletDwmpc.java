package com.dwmpc.controller;

import com.dwmpc.model.DAO.ConnectionUtil;
import com.dwmpc.model.bean.*;
import org.mindrot.jbcrypt.BCrypt;

import javax.annotation.Resource;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.sql.DataSource;
import java.io.*;
import java.math.BigInteger;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ServletDwmpc", value = "/ServletDwmpc")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 14, // 10 MB

        maxFileSize = 1024 * 1024 * 1000000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000000)   	// 1 GB


public class ServletDwmpc extends HttpServlet {

    private ConnectionUtil connectionUtil;
    @Resource(name = "jdbc/Dwmpc_aws")

    private DataSource dataSource;
    int id_user;
    public static int BUFFER_SIZE = 1024 * 100;
    public static final String UPLOAD_DIR = "resources";
    public static String fileName = null;
    private vehicle getAttachment;

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
        try {
            String theCommand = request.getParameter("command");

            if (theCommand == null) {

                theCommand = "display_List";
            }
            switch (theCommand) {
                case "downloadVehicleAttachment":
                    downloadVehicleAttachment(request, response);
                    break;
                case "getCompany":
                    getCompany(request,response);
                    break;


            }
            // listStudents(request, response);
        }

        catch (Exception exc) {
            exc.printStackTrace();

        }
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
                    Login(request,response,"None");
                    break;
                case "Company Registration":
                    registerCompany(request,response);
                    break;
                case "getCompany":
                    getCompany(request,response);
                    break;
                case "RegisteringEmployee":
                    registerEmployee(request,response);
                    break;
                case "EmployeesDetail":
                    getEmployees(request,response);
                    break;
                case "kill Session":

                    Stop_Session(request,response);
                    break;
                case "RegisteringVehicle":
                    registerVehicle(request,response);
                    break;
                case "VehicleDetail":
                    getVehicle(request,response);
                    break;
                case "VehicleAttachments":
                    getAttachments(request,response);
                    break;
                case "downloadVehicleAttachment":
                    downloadVehicleAttachment(request, response);
                    break;
                case "LicenseApplication":
                    LicenseApplication(request, response);
                    break;
                case "LogOut Session":
                    Logout(request, response);
                    break;
                case "Officers Action":
                    OfficerActions(request, response);
                    break;
                case "Monthly Report":
                    setMonthlyReport(request, response);
                    break;
                case "Delay":
                    delay_Time=request.getParameter("delayTime");
                    System.out.println("this good :"+delay_Time);
                    break;
                case "Report Waste Type":
                    setReportWaste(request,response);
                    break;
                case "Forget Password":
                    Forgot_Password(request,response);
                    break;
            }
            // listStudents(request, response);
        }

        catch (Exception exc) {
            exc.printStackTrace();

        }
    }

    private void Forgot_Password(HttpServletRequest request, HttpServletResponse response)throws Exception {
        String email=request.getParameter("email");
        otp.emailVerification(email);
    }

    private void setReportWaste(HttpServletRequest request, HttpServletResponse response) throws Exception{
        String action=request.getParameter("action");
        int Company_id= Integer.parseInt(request.getParameter("Company Id"));
        String Waste_Type = request.getParameter("Waste Type");
        if (Waste_Type.equals("yes")){
            Waste_Type=request.getParameter("yes");
        }
        String Generated_Quantity = request.getParameter("GeneratedQuantity");
        String Amount_Shipped = request.getParameter("AmountShipped");
        String Return = request.getParameter("Returns");
        String Date_Of_Report = request.getParameter("startedOn");
        String CompanyName = request.getParameter("Company Name");
        WasteTypeReport wasteTypeReport=new WasteTypeReport(Company_id,Waste_Type,Generated_Quantity,Amount_Shipped,Return,Date_Of_Report);
        System.out.println("Action: "+action);
        if(action.equals("Editing")){
            int Report_id= Integer.parseInt(request.getParameter("id"));
            connectionUtil.setReportWaste(wasteTypeReport,action,Report_id,CompanyName);
        }else{
            connectionUtil.setReportWaste(wasteTypeReport,action,0,CompanyName);
        }



    }

    private void setMonthlyReport(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String action=request.getParameter("action");
        HttpSession session=request.getSession();
        if(action.equals("Registration")){
            String Employee_Type=null;
            String reponse="Error";
            for (int i=1;i<=5;++i){
                int Company_id= Integer.parseInt(request.getParameter("Company Id"));
                int C_M= Integer.parseInt(request.getParameter("C_Male"+i));
                int C_F= Integer.parseInt(request.getParameter("C_Female"+i));
                int N_M= Integer.parseInt(request.getParameter("N_Male"+i));
                int N_F= Integer.parseInt(request.getParameter("N_Female"+i));
                int Salary= Integer.parseInt(request.getParameter("Salary"+i));
                switch(i){
                    case 1:
                        Employee_Type="Working proprietors";
                        break;
                    case 2:
                        Employee_Type="Permanent employees";
                        break;
                    case 3:
                        Employee_Type="Casual/ Temporary employees";
                        break;
                    case 4:
                        Employee_Type="Number of Newly employed";
                        break;
                    case 5:
                        Employee_Type="Number dismissed during the reporting Period";
                        break;
                }
                Monthly_Report report=new Monthly_Report(0,Employee_Type,Company_id,C_M,C_F,N_M,N_F,Salary);
                reponse=connectionUtil.setMonthlyReport(report,action);

            }
            if(reponse.equals("Successful")){
                int Company_id= Integer.parseInt(request.getParameter("Company Id"));
                Timestamp timestamp = new Timestamp(System.currentTimeMillis());
                String ApplicationDate= String.valueOf(timestamp.getTime());
                connectionUtil.ReportUptodate(Company_id,ApplicationDate,"Update");
                session.setAttribute("ReportBtn","Update");
                request.getRequestDispatcher("CompanyInfo.jsp").forward(request, response);
            }
        }
    }


    private void OfficerActions(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String action=request.getParameter("action");
        int User_id = Integer.parseInt(request.getParameter("User Id"));
        String UserType = request.getParameter("UserType");
        String Branch=request.getParameter("Branch");
        Apply_id= Integer.parseInt(request.getParameter("Apply_id"));

            String Company_Id=request.getParameter("company_id");
            officerAction setAction=new officerAction(User_id,Apply_id,action,delay_Time);
            System.out.println("Apply id: "+Apply_id);
            connectionUtil.OfficersActions(setAction,UserType,Vehicle_id,Company_Id);
            HttpSession session=request.getSession();


            if(UserType.equals("Waste Management Officer")){
                System.out.println("This works");
                String Affi=request.getParameter("own");
                String hazardous_waste=request.getParameter("hazardous_waste");
                String general="All Present";
                String Additional;
                String hazardus;
                if(hazardous_waste.equals("Hazardous waste")){
                    hazardus="All Present";
                }else{
                    hazardus="Not Needed";
                }
                if(Affi.equals("Yes")){
                    Additional="All Present";
                }else {
                    Additional="Not Needed";
                }
                connectionUtil.registerInspection(User_id,general,hazardus,Additional);
                List<company_Information> CompanyInfo=connectionUtil.getAllCompanies(User_id,UserType,Branch);
                session.setAttribute("All_companies", CompanyInfo);
            }

            List<company_Information> CompanyInfo=connectionUtil.getAllCompanies(User_id,UserType,Branch);
            if(!CompanyInfo.isEmpty()){
                System.out.println("Compamy Name :"+CompanyInfo.get(0).getCompany_Name());
                session.setAttribute("All_companies", CompanyInfo);
            }
            request.getRequestDispatcher("Officer-Home.jsp").forward(request, response);
    }


    // Register and Login

    private void Logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();
        System.out.println("Log Out");
        if (session.getAttribute("All_Vehicles") != null){
            session.removeAttribute("All_Vehicles");
        }
        if (session.getAttribute("Attachments") != null){
            session.removeAttribute("Attachments");
        }
        if (session.getAttribute("Pending") != null){
            session.removeAttribute("Pending");
        }
        if (session.getAttribute("All_Employee") != null){
            session.removeAttribute("All_Employee");
        }
        if (session.getAttribute("Report_id") != null){
            session.removeAttribute("Report_id");
        }
        if (session.getAttribute("Company_info") != null){
            session.removeAttribute("Company_info");
        }
        if (session.getAttribute("All_companies") != null){
            session.removeAttribute("All_companies");
        }
        if (session.getAttribute("GeneralCount") != null){
            session.removeAttribute("GeneralCount");
        }
        if (session.getAttribute("CountSp") != null){
            session.removeAttribute("CountSp");
        }
        System.out.println("Log Out test");
        response.sendRedirect("login.jsp");
    }

    private void Login(HttpServletRequest request, HttpServletResponse response, String Login) throws Exception,NoSuchAlgorithmException, InvalidKeySpecException {
        String Email = request.getParameter("email").trim();
        String userType="Unknown";
        String Branch="None";
        String action="Login";
        List<user> userlg=null;
        if(!Login.equals("Editing_Client")){
            String Password = request.getParameter("password").trim();
            userlg = connectionUtil.loginUser(Email, Password,action);
        }else{
            userlg = connectionUtil.loginUser(Email, "None",action);
        }


        //String securePassword = generateStorngPasswordHash(Password);


        HttpSession session=request.getSession();
        session.setAttribute("User_Info", userlg);

        if(!userlg.isEmpty()) {
            int user_id=userlg.get(0).getUser_Id();
            System.out.println("this is user id :"+user_id+" and type :"+userlg.get(0).getUser_type());

            session.removeAttribute("LoginError");

            if (userlg.get(0).getUser_type().equals("Administrator")) {
                action = "Admin";
                List<user> userlg2 = connectionUtil.loginUser(Email, "securePassword", action);
                session.setAttribute("All_offers", userlg2);
                request.getRequestDispatcher("Admin-Table.jsp").forward(request, response);

            } else if (userlg.get(0).getUser_type().equals("Client")) {
                userType = "Client";

                List<company_Information> CompanyInfo = connectionUtil.getAllCompanies(user_id, userType, Branch);

                CountGeneral count=connectionUtil.CountGe(user_id);
                session.setAttribute("GeneralCount", count);

                if (!CompanyInfo.isEmpty()) {
                    session.setAttribute("All_companies", CompanyInfo);
                }
               // response.getWriter().println("Client");
                request.getRequestDispatcher("Home.jsp").forward(request, response);
            } else {
                userType = userlg.get(0).getUser_type();
                Branch = userlg.get(0).getLocation();
                List<company_Information> CompanyInfo = connectionUtil.getAllCompanies(user_id, userType, Branch);

                System.out.println("officer");
                if (!CompanyInfo.isEmpty()) {
                    session.setAttribute("All_companies", CompanyInfo);
                }
               // response.getWriter().println("Officer");
                request.getRequestDispatcher("Officer-Home.jsp").forward(request, response);
            }
        }else{
            user ErrorSession=new user(Email);

            session.setAttribute("LoginError",ErrorSession);
            //response.getWriter().println("Error");
            this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
        }

    }

    private void User_Registration(HttpServletRequest request, HttpServletResponse response) throws Exception,NoSuchAlgorithmException, InvalidKeySpecException {

        String firstName=request.getParameter("first_name");
        String lastName=request.getParameter("last_name");
        String email=request.getParameter("email");
        String securePassword=null;
        String action=request.getParameter("action");


        int omang= Integer.parseInt(request.getParameter("Omang_code"));
        String contacting= request.getParameter("phone_number");
        String UserType=request.getParameter("User_Type");
        String location=request.getParameter("location");

        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date date = new Date();
        int user_id=0;
        if(!action.equals("Registration")){
            user_id= Integer.parseInt(request.getParameter("User_Id"));

        }else{
            String password=request.getParameter("password");
            securePassword= generateStorngPasswordHash(password);
        }
        user userReg;
        if(action.equals("Editing_Offers")){
            String[] add_Roles=request.getParameterValues("add_Roles");
            String add_Roles1=null;
            if (add_Roles != null) {
                String add_Roles2="";
                for (int i = 0; i < add_Roles.length; i++)
                {
                    System.out.println ("<b>"+add_Roles[i]+"<b>");
                    switch (add_Roles[i]) {
                        case "Compliance Officer":
                            add_Roles2 = "CO, ";
                            break;
                        case "Waste Management Officer":
                            add_Roles2 = add_Roles2 + "WMO, ";
                            break;
                        case "Regional Coordinate":
                            add_Roles2 = add_Roles2 + "RC, ";
                            break;
                        case "Waste Management Officer Compliance Headquarters":
                            add_Roles2 = add_Roles2 + "WMOCH, ";
                            break;
                        case "Head of Division Headquarters":
                            add_Roles2 = add_Roles2 + "HDH, ";
                            break;
                    }
                }
                StringBuffer sb= new StringBuffer(add_Roles2);
                sb.deleteCharAt(sb.length()-2);
                add_Roles1= String.valueOf(sb);
            }
            userReg=new user(user_id,firstName,lastName,email,UserType,omang,contacting,add_Roles1,location);
        }else if(action.equals("Editing_Client")){

            userReg=new user(user_id,firstName,lastName,email,UserType,"None",omang,contacting,location,"just");
        }else{
            userReg=new user(user_id,firstName,lastName,email,UserType,securePassword,omang,contacting,location,"just");
        }

       String msg=connectionUtil.registerUser(userReg,action);

        HttpSession session=request.getSession();
        System.out.println("Action :"+action);

        if(msg.equals("Successful")){
            if(action.equals("Editing_Offers")){
                action = "Admin";
                List<user> userlg2 = connectionUtil.loginUser(email,"Undefined", action);
                session.setAttribute("All_offers", userlg2);
                request.getRequestDispatcher("Admin-Table.jsp").forward(request, response);
            }else if(action.equals("Editing_Client")){
                Login(request,response,"Editing_Client");
            }else{
                Login(request,response,"None");
            }


        }else {
            if(UserType.equals("Client")){
                session.setAttribute("ErrorEmail",userReg);
                this.getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);
            }else{
                session.setAttribute("ErrorEmail",userReg);
                this.getServletContext().getRequestDispatcher("/Officer-Registration-Form.jsp").forward(request, response);
            }

        }
    }



    // Company Info
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
            session.setAttribute("Successful_Registration_Alert","CompanyRegistration");
        }else{
            companyId= Integer.parseInt(request.getParameter("company_Id"));
        }


        company_Information registerCompany=new company_Information(companyId,id,companyName,Com_email,
                Street_address,street_address_line1,City_Town_Village,region,plot_number,
                ward,telephone,fax,phone_number,Status,ApplicationDate,Company_License_Status);

        company_Information getCurrentCompanyID=connectionUtil.registerCompany(registerCompany,action);

        if(getCurrentCompanyID.getCompany_Name().equals("Error Email")){
            session.setAttribute("Company_Info_Form", registerCompany);
            session.setAttribute("ErrorCompanyEmail", "Email");
            response.sendRedirect("companyForm.jsp");

        }else if(getCurrentCompanyID.getCompany_Name().equals("Error Name")){
            session.setAttribute("Company_Info_Form", registerCompany);
            session.setAttribute("ErrorCompanyName", "Company Name");
            response.sendRedirect("companyForm.jsp");
        }else{

            if (session.getAttribute("Company_Info_Form") != null){
                session.removeAttribute("Company_Info_Form");
            }
            if (session.getAttribute("ErrorCompanyName") != null){
                session.removeAttribute("ErrorCompanyName");
            }
            if (session.getAttribute("ErrorCompanyEmail") != null){
                session.removeAttribute("ErrorCompanyEmail");
            }
            List<company_Information> CompanyInfo=connectionUtil.getAllCompanies(id,"Client","None");
            session.setAttribute("All_companies", CompanyInfo);

            if(action.equals("Registration")) {
                connectionUtil.ReportUptodate(getCurrentCompanyID.getCompany_Id(),"There is Null","Registration");
                connectionUtil.ReportTableCreation(getCurrentCompanyID.getCompany_Name());
                int Report_id=connectionUtil.getReportWaste_lastRow(getCurrentCompanyID.getCompany_Name());
                session.setAttribute("Report_id",Report_id);
                getCompanyName(request,response,getCurrentCompanyID.getCompany_Name());
            }



            session.removeAttribute("Company_info");
            session.setAttribute("Company_info", getCurrentCompanyID);



            List<company_personnel> employees=connectionUtil.getAllEmployees(getCurrentCompanyID.getCompany_Id());
            session.setAttribute("All_Employee",employees);

            //request.getRequestDispatcher("CompanyInfo.jsp").forward(request, response);
            response.sendRedirect("CompanyInfo.jsp");
        }


    }
    int Apply_id;
    String delay_Time;
    String Vehicle_id;
    public void getCompanyName(HttpServletRequest request, HttpServletResponse response,String companyName){

        HttpSession session=request.getSession();
        int count=0;
        for(int i=0; i<companyName.length(); i++){
            if(companyName.charAt(i)!='\0'){
                count++;
            }
        }
        if(count>=11){
            companyName=companyName.substring(0, 11)+"...";
        }
        session.setAttribute("CompanyName",companyName);
    }

    private void Report(HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession session=request.getSession();
        int Report_id=connectionUtil.getReportWaste();
        session.setAttribute("Report_id",Report_id);
    }

    private void getCompany(HttpServletRequest request, HttpServletResponse response) throws  Exception{
        HttpSession session=request.getSession();
        int Company_id= Integer.parseInt(request.getParameter("company_id"));
        String userType= request.getParameter("UserType");
        System.out.println("This "+userType);

        company_Information FirstCompanyDetails=connectionUtil.getCompanyDetails(Company_id);
        session.setAttribute("Company_info", FirstCompanyDetails);

        CountGeneral count=connectionUtil.CountSp(Company_id);
        session.setAttribute("CountSp", count);

        CountGeneral count2=connectionUtil.CountGe(FirstCompanyDetails.getUser_Id());
        session.setAttribute("GeneralCount", count2);


        if(userType.equals("Client")){

            getCompanyName(request,response,FirstCompanyDetails.getCompany_Name());
            String companyName=FirstCompanyDetails.getCompany_Name();

            String ClientReport=connectionUtil.getMonthlyReport(Company_id);
            session.setAttribute("ReportBtn",ClientReport);
            int Report_id=connectionUtil.getReportWaste_lastRow(companyName);
            session.setAttribute("Report_id",Report_id);
            request.getRequestDispatcher("CompanyInfo.jsp").forward(request, response);
        }else if(userType.equals("Waste Management Officer")) {
            Apply_id= Integer.parseInt(request.getParameter("Apply_id"));
            Vehicle_id=request.getParameter("vehicle_id");
            delay_Time=request.getParameter("delayTime");
            List<vehicle> getVehicleDetail=connectionUtil.getVehicleDetails(Vehicle_id,"Waste Management Officer");
            session.setAttribute("All_Vehicles",getVehicleDetail);
            session.setAttribute("Apply_id",Apply_id);
            request.getRequestDispatcher("WMO-Inspection-Form.jsp").forward(request, response);
        }else{
            Apply_id= Integer.parseInt(request.getParameter("Apply_id"));
            Vehicle_id=request.getParameter("vehicle_id");
            delay_Time=request.getParameter("delayTime");
            System.out.println("This is well :"+delay_Time);
            System.out.println("This "+userType);
            List<vehicle> getVehicleDetail=connectionUtil.getVehicleDetails(Vehicle_id,"Waste Management Officer");
            session.setAttribute("All_Vehicles",getVehicleDetail);
            session.setAttribute("Apply_id",Apply_id);
            request.getRequestDispatcher("CompanyInfo-Officer-Table.jsp").forward(request, response);
        }


    }



    // Employee info
    private void getEmployees(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();

        int Company_id= Integer.parseInt(request.getParameter("company_id"));
        System.out.println("well  :"+Company_id);
        List<company_personnel> employees=connectionUtil.getAllEmployees(Company_id);
        session.setAttribute("All_Employee",employees);
        response.sendRedirect("Employee-Table.jsp");

    }

    private void registerEmployee(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();
        String action = request.getParameter("action");
        int Company_id = Integer.parseInt(request.getParameter("Company Id"));
        String firstName = request.getParameter("First Name");
        String lastName = request.getParameter("Last Name");
        String position = request.getParameter("Position/job Title");
        String qualification = request.getParameter("Qualification");
        String training = request.getParameter("training");
        String Contact = request.getParameter("Contact");
        String Employee_Status="UpToDate";
        int Employee_Id;
        if(action.equals("EditingEmployee")){
            Employee_Id = Integer.parseInt(request.getParameter("Employee Id"));
        }else{
            Employee_Id=0;
        }


        company_personnel companyPersonnel = new company_personnel(Employee_Id,Company_id,firstName, lastName, position, qualification, training,Employee_Status,Contact);
        connectionUtil.EmployeeRegistration(companyPersonnel,action);


        List<company_personnel> employees=connectionUtil.getAllEmployees(Company_id);
        session.setAttribute("All_Employee",employees);
        response.sendRedirect("Employee-Table.jsp");

    }



    // Vehicle info
    private void registerVehicle(HttpServletRequest request, HttpServletResponse response)throws Exception {

        String action=request.getParameter("action");

        String CompanyName=request.getParameter("CompanyName");
        String addAction=request.getParameter("addAction");
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String ApplicationDate= String.valueOf(timestamp.getTime());

        String fileName = null;
        String fileName2 = null;
        String fileName3 = null;
        String fileName4 = null;
        String fileName5 = null;
        String fileName6 = null;
        String fileName8 = null;
        String fileName9 = null;
        String fileName10 = null;
        String fileName11 = null;
        String fileName12 = null;
        String fileName14 = null;


        if(action.equals("RegisteringVehicle") || action.equals("EditingAttachment")){


            if(addAction.equals("EditingCertificateAttachment") || addAction.equals("Both")){


                String folderName6 = "Documents/Hazardous Waste";
                String uploadPath6 = request.getServletContext().getRealPath("") + folderName6;
                File dir6 = new File(uploadPath6);
                if (!dir6.exists()) {
                    dir6.mkdirs();
                }

                Part hazardous_waste=request.getPart("hazardous waste");
                InputStream hazardous_waste1 = hazardous_waste.getInputStream();
                fileName6=CompanyName+"_hazardous waste"+ApplicationDate+".pdf";
                Files.copy(hazardous_waste1, Paths.get(uploadPath6 + File.separator + fileName6), StandardCopyOption.REPLACE_EXISTING);


                String folderName8 = "Documents/Health and Safety";
                String uploadPath8 = request.getServletContext().getRealPath("") + folderName8;
                File dir8 = new File(uploadPath8);
                if (!dir8.exists()) {
                    dir8.mkdirs();
                }

                Part training_on_health_and_safety=request.getPart("Health and Safety");
                InputStream training_on_health_and_safety1 = training_on_health_and_safety.getInputStream();
                fileName8=CompanyName+"_Health and Safety"+ApplicationDate+".pdf";
                Files.copy(training_on_health_and_safety1, Paths.get(uploadPath8 + File.separator + fileName8), StandardCopyOption.REPLACE_EXISTING);


                String folderName9 = "Documents/Fire fighting and First Aid";
                String uploadPath9 = request.getServletContext().getRealPath("") + folderName9;
                File dir9 = new File(uploadPath9);
                if (!dir9.exists()) {
                    dir9.mkdirs();
                }


                Part Fire_fighting_and_first_aid=request.getPart("Fire fighting and First Aid");
                InputStream Fire_fighting_and_first_aid1 = Fire_fighting_and_first_aid.getInputStream();
                fileName9=CompanyName+"_Fire fighting and First Aid"+ApplicationDate+".pdf";
                Files.copy(Fire_fighting_and_first_aid1, Paths.get(uploadPath9 + File.separator + fileName9), StandardCopyOption.REPLACE_EXISTING);

                String folderName10 = "Documents/Health and Environment";
                String uploadPath10 = request.getServletContext().getRealPath("") + folderName10;
                File dir10 = new File(uploadPath10);
                if (!dir10.exists()) {
                    dir10.mkdirs();
                }

                Part Health_and_Environment=request.getPart("Health and Environment");
                InputStream Health_and_Environment1 = Health_and_Environment.getInputStream();
                fileName10=CompanyName+"_Health and Environment"+ApplicationDate+".pdf";
                Files.copy(Health_and_Environment1, Paths.get(uploadPath10 + File.separator + fileName10), StandardCopyOption.REPLACE_EXISTING);


                String folderName11 = "Documents/Certification of Road worthiness";
                String uploadPath11 = request.getServletContext().getRealPath("") + folderName11;
                File dir11 = new File(uploadPath11);
                if (!dir11.exists()) {
                    dir11.mkdirs();
                }

                Part Certification_of_roadwortiness=request.getPart("Certification_of_roadwortiness");
                System.out.println("This is problem :"+Certification_of_roadwortiness);
                InputStream Certification_of_roadwortiness1 = Certification_of_roadwortiness.getInputStream();
                fileName11=CompanyName+"_Certification of Road worthiness"+ApplicationDate+".pdf";
                Files.copy(Certification_of_roadwortiness1, Paths.get(uploadPath11 + File.separator + fileName11), StandardCopyOption.REPLACE_EXISTING);

                String folderName3 = "Documents/Certification of cooperation";
                String uploadPath3 = request.getServletContext().getRealPath("") + folderName3;
                File dir3 = new File(uploadPath3);
                if (!dir3.exists()) {
                    dir3.mkdirs();
                }

                Part Certification_of_Cooperation=request.getPart("Certification of cooperation");
                InputStream Certification_of_Cooperation2 = Certification_of_Cooperation.getInputStream();
                fileName3=CompanyName+"_Certification of cooperation"+ApplicationDate+".pdf";
                Files.copy(Certification_of_Cooperation2, Paths.get(uploadPath3 + File.separator + fileName3), StandardCopyOption.REPLACE_EXISTING);

            }


            if(addAction.equals("EditingVehicleAttachment") || addAction.equals("Both")){

                String folderName12 = "Documents/Motor Vehicle Registration Book";
                String uploadPath12 = request.getServletContext().getRealPath("") + folderName12;
                File dir12 = new File(uploadPath12);
                if (!dir12.exists()) {
                    dir12.mkdirs();
                }


                Part Motor_Vehicle_Registration_Book=request.getPart("Motor_Vehicle_Registration_Book");
                System.out.println("This is problem :"+Motor_Vehicle_Registration_Book);
                InputStream Motor_Vehicle_Registration_Book1 = Motor_Vehicle_Registration_Book.getInputStream();
                fileName12=CompanyName+"_Motor Vehicle Registration Book"+ApplicationDate+".pdf";
                Files.copy(Motor_Vehicle_Registration_Book1, Paths.get(uploadPath12 + File.separator + fileName12), StandardCopyOption.REPLACE_EXISTING);


                String folderName14 = "Documents/Affidavit";
                String uploadPath14 = request.getServletContext().getRealPath("") + folderName14;
                File dir14 = new File(uploadPath14);
                if (!dir14.exists()) {
                    dir14.mkdirs();
                }

                Part affidavit=request.getPart("affidavit");
                InputStream affidavit1 = affidavit.getInputStream();
                fileName14=CompanyName+"_affidavit"+ApplicationDate+".pdf";
                Files.copy(affidavit1, Paths.get(uploadPath14 + File.separator + fileName14), StandardCopyOption.REPLACE_EXISTING);


                String folderName = "Documents/BA permit";
                String uploadPath = request.getServletContext().getRealPath("") + folderName;
                File dir = new File(uploadPath);
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                Part BA_permit=request.getPart("BA permit");
                InputStream BA_permit1 = BA_permit.getInputStream();
                fileName=CompanyName+"_BA permit"+ApplicationDate+".pdf";
                Files.copy(BA_permit1, Paths.get(uploadPath + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);

                String folderName2 = "Documents/Payment receipt";
                String uploadPath2 = request.getServletContext().getRealPath("") + folderName2;
                File dir2 = new File(uploadPath2);
                if (!dir2.exists()) {
                    dir2.mkdirs();
                }
                Part Payment_receipt=request.getPart("Payment receipt");
                InputStream Payment_receipt1 = Payment_receipt.getInputStream();
                fileName2=CompanyName+"_Payment receipt"+ApplicationDate+".pdf";
                Files.copy(Payment_receipt1, Paths.get(uploadPath2 + File.separator + fileName2), StandardCopyOption.REPLACE_EXISTING);

                // fileName="test.pdf";


                String folderName4 = "Documents/Facility Licence";
                String uploadPath4 = request.getServletContext().getRealPath("") + folderName4;
                File dir4 = new File(uploadPath4);
                if (!dir4.exists()) {
                    dir4.mkdirs();
                }


                fileName4=request.getParameter("Facility Licence1");
                if(getAttachment==null || !getAttachment.getFacility_Licence().equals(fileName4)){
                    Part Facility_Licence=request.getPart("Facility Licence");
                    InputStream Facility_Licence1 = Facility_Licence.getInputStream();
                    fileName4=CompanyName+"_Facility Licence"+ApplicationDate+".pdf";
                    Files.copy(Facility_Licence1, Paths.get(uploadPath4 + File.separator + fileName4), StandardCopyOption.REPLACE_EXISTING);
                }else{
                    fileName4=request.getParameter("Facility Licence1");
                }

                String folderName5 = "Documents/PrDP 'H' For Hazardous Waste";
                String uploadPath5 = request.getServletContext().getRealPath("") + folderName5;
                File dir5 = new File(uploadPath5);
                if (!dir5.exists()) {
                    dir5.mkdirs();
                }
                Part PrPD=request.getPart("PrDP 'H' For Hazardous Waste");
                InputStream PrPD1 = PrPD.getInputStream();
                fileName5=CompanyName+"_PrDP 'H' For Hazardous Waste"+ApplicationDate+".pdf";
                Files.copy(PrPD1, Paths.get(uploadPath5 + File.separator + fileName5), StandardCopyOption.REPLACE_EXISTING);


            }


        }
        int company_id = 0;
        String  chase_id=request.getParameter("Chassis_Number");;
        String vehicle_Type = null;
        String Unladen = null;
        String Waste_Type = null;
        String Annual_Quatity = null;
        String Registration_Number = null;
        String Own = null;

        if(action.equals("RegisteringVehicle") || action.equals("EditingVehicle")){
            company_id= Integer.parseInt(request.getParameter("Company Id"));
            // RegisterCompany registerCompany=connectionUtil.getCompanyDetail(company_id, action, chase_id);
            vehicle_Type=request.getParameter("vehicle_Type");
            System.out.println("sdsdsd "+vehicle_Type);
            //String Chase_no=request.getParameter("Vehicle_Registration_No");
            Unladen=request.getParameter("Unladen_Weight");
            Waste_Type=request.getParameter("Waste_Type");
            Annual_Quatity=request.getParameter("Annual_Quatity");
            //String type_of_waste_covered=request.getParameter("type_of_waste_covered");
            Registration_Number=request.getParameter("Registration_Number");
            Own=request.getParameter("Your_Vehicle");

        }

        vehicle vehicleRegistration= null;

        if (action.equals("RegisteringVehicle")){
            vehicleRegistration=new vehicle(chase_id,company_id,vehicle_Type,Unladen,Waste_Type,
                    Annual_Quatity,Waste_Type,Registration_Number,fileName,fileName2,
                    fileName3,fileName4,fileName5,fileName6,fileName8,
                    fileName9,fileName10,fileName11,fileName12,fileName14,Own);
        }else if(action.equals("EditingVehicle")){
            vehicleRegistration=new vehicle(chase_id,vehicle_Type,Unladen,Waste_Type,
                    Annual_Quatity,Waste_Type,Registration_Number,Own,"UptoDate");
        }else if(action.equals("EditingAttachment")){
            if(addAction.equals("EditingVehicleAttachment")){
                System.out.println(" Chassis :"+chase_id);
                vehicleRegistration=new vehicle(chase_id,
                        fileName,fileName2,
                        fileName4,fileName5,fileName12,fileName14);
            }else{
                vehicleRegistration=new vehicle(chase_id,
                        fileName3,fileName6,fileName8,
                        fileName9,fileName10,fileName11);
            }


        }


        connectionUtil.registerVehicle(vehicleRegistration,action,addAction);

        List<vehicle> getVehicleDetail=connectionUtil.getVehicleDetails(String.valueOf(company_id),"Client");
        List<vehicle> getUnAppliedVehicle=connectionUtil.getPendingApplication(company_id);
        HttpSession session = request.getSession();
        if(addAction.equals("Both")){
            session.setAttribute("Pending",getUnAppliedVehicle);
            session.setAttribute("All_Vehicles",getVehicleDetail);
            response.sendRedirect("Vehicle-Table.jsp");
        }else{
            getAttachment=connectionUtil.getAttachments(chase_id);
            session.setAttribute("Attachments",getAttachment);
            response.sendRedirect("Attachments.jsp");
        }


    }

    private void getVehicle(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session=request.getSession();
        String Company_id=request.getParameter("company_id");
        List<vehicle> getVehicleDetail=connectionUtil.getVehicleDetails(Company_id,"Client");
        List<vehicle> getUnAppliedVehicle=connectionUtil.getPendingApplication(Integer.parseInt(Company_id));
        session.setAttribute("All_Vehicles",getVehicleDetail);
        session.setAttribute("Pending",getUnAppliedVehicle);
        response.sendRedirect("Vehicle-Table.jsp");
    }

    private void downloadAttachment(String subDir, String filename, HttpServletResponse response) throws Exception{
        if (filename == null || filename.equals("")) {
            /**
             * *** Set Response Content Type ****
             */
            response.setContentType("text/html");

            /**
             * *** Print The Response ****
             */
            response.getWriter().println("<h3>File " + filename + " Is Not Present .....!</h3>");
        } else {



            String applicationPath = getServletContext().getRealPath("");
            String downloadPath = applicationPath + File.separator + subDir;
            String filePath = downloadPath + File.separator + filename;
            System.out.println("fileName:" + filename);
            System.out.println("filePath :" + filePath);
            File file = new File(filePath);
            OutputStream outStream = null;
            FileInputStream inputStream = null;

            if (file.exists()) {

                /**
                 * ** Setting The Content Attributes For The Response Object
                 * ***
                 */
                //  String mimeType = "application/octet-stream";
                // response.setContentType(mimeType);

                /**
                 * ** Setting The Headers For The Response Object ***
                 */
                String headerKey = "Content-Disposition";
                // String headerValue = String.format("attachment; filename=\"%s\"", file.getName());
                //response.setHeader(headerKey, headerValue);

                String mimeType2 = "application/pdf";
                response.setContentType(mimeType2);
                String headerValue2 = String.format("inline; filename=\"%s\"", file.getName());
                response.addHeader(headerKey, headerValue2);

                try {

                    /**
                     * ** Get The Output Stream Of The Response ***
                     */
                    outStream = response.getOutputStream();
                    inputStream = new FileInputStream(file);
                    byte[] buffer = new byte[BUFFER_SIZE];
                    int bytesRead = -1;

                    /**
                     * ** Write Each Byte Of Data Read From The Input Stream
                     * Write Each Byte Of Data Read From The Input Stream Into
                     * The Output Stream ***
                     */
                    while ((bytesRead = inputStream.read(buffer)) != -1) {
                        outStream.write(buffer, 0, bytesRead);
                    }
                } catch (IOException ioExObj) {
                    System.out.println("Exception While Performing The I/O Operation?= " + ioExObj.getMessage());
                } finally {
                    if (inputStream != null) {
                        inputStream.close();
                    }

                    outStream.flush();
                    if (outStream != null) {
                        outStream.close();
                    }
                }
            } else {

                /**
                 * *** Set Response Content Type ****
                 */
                response.setContentType("text/html");

                /**
                 * *** Print The Response ****
                 */
                response.getWriter().println("<h3>File " + filename + " Is Not Present .....!</h3>");
            }

        }

    }

    private void downloadVehicleAttachment(HttpServletRequest request, HttpServletResponse response)throws Exception {
        String getSomething=request.getParameter("Download");
        String filename=null;
        String subDir =null;
        System.out.println(getSomething);
        switch (getSomething) {
            case "Certification_of_roadwortiness":
                filename = getAttachment.getRoad_Wortiness();
                subDir = "Documents/Certification of Road worthiness";
                break;
            case "Motor_Vehicle_Registration_Book":
                filename = getAttachment.getBlue_book();
                subDir = "Documents/Motor Vehicle Registration Book";

                break;
            case "Affidavit":
                filename = getAttachment.getAffidavit();
                subDir = "Documents/Affidavit";
                break;
            case "BA_permit":
                filename = getAttachment.getBA_permit();
                subDir ="Documents/BA permit";
                break;
            case "getPayment_receipt":
                filename = getAttachment.getPayment_receipt();
                subDir ="Documents/Payment receipt";
                break;
            case "Certification_of_cooperation":
                filename = getAttachment.getCertification_of_Cooperation();
                subDir ="Documents/Certification of cooperation";
                break;
            case "Facility_Licence_For_all_recyclers":
                filename = getAttachment.getFacility_Licence();
                subDir ="Documents/Facility Licence";
                break;
            case "PrDP_H_For_Hazardous_Waste":
                filename = getAttachment.getPrPD();
                subDir ="Documents/PrDP 'H' For Hazardous Waste";
                break;
            case "Certificate_of_training_on_Both_Fire_fighting_and_First_Aid":
                filename = getAttachment.getFire_fighting_and_first_aid();
                subDir ="Documents/Fire fighting and First Aid";
                break;
            case "Certificate_of_training_on_Safety_Health_and_Environment_Waste":
                filename = getAttachment.getHealth_and_Environment();
                subDir ="Documents/Health and Environment";
                break;
            case "Certificate_of_training_on_Occupational_Health_and_Safety":
                filename = getAttachment.getTraining_on_health_and_safety();
                subDir ="Documents/Health and Safety";
                break;
            case "Contingency_plan_Containing_Spill_containment_and_accident_response_plan_for_hazardous_waste":
                filename = getAttachment.getHazardous_waste();
                subDir ="Documents/Hazardous Waste";
                break;

        }
        downloadAttachment(subDir,filename,response);


    }

    private void getAttachments(HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession session=request.getSession();
        String chassis_No= request.getParameter("chassis_No");
        System.out.println("this chassis :"+chassis_No);
        getAttachment=connectionUtil.getAttachments(chassis_No);
        session.setAttribute("Attachments",getAttachment);
        response.sendRedirect("Attachments.jsp");
    }

    private void LicenseApplication(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String[] Checked=request.getParameterValues("Chassis");
        if (Checked != null) {
            for (int i = 0; i < Checked.length; i++)
            {
                System.out.println ("<b>"+Checked[i]+"<b>");
                connectionUtil.ApplyForLicence(Checked[i]);
            }
        }
        getVehicle(request,response);

    }


    //Un-Used
    private void Stop_Session(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        session.removeAttribute("Successful_Registration_Alert");
        response.sendRedirect("CompanyInfo.jsp");
    }




    //Add salt
    //Add salt

    private String hashPassword(String plainTextPassword){
        return BCrypt.hashpw(plainTextPassword, BCrypt.gensalt());
    }

    private static String get_SHA_512_SecurePassword(String passwordToHash, byte[] salt)
    {
        //Use MessageDigest md = MessageDigest.getInstance("SHA-512");
        String generatedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-1");
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

    private static boolean validatePassword(String originalPassword, String storedPassword) throws NoSuchAlgorithmException, InvalidKeySpecException
    {
        String[] parts = storedPassword.split(":");
        int iterations = Integer.parseInt(parts[0]);
        byte[] salt = fromHex(parts[1]);
        byte[] hash = fromHex(parts[2]);

        PBEKeySpec spec = new PBEKeySpec(originalPassword.toCharArray(), salt, iterations, hash.length * 8);

        SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");

        byte[] testHash = skf.generateSecret(spec).getEncoded();

        int diff = hash.length ^ testHash.length;

        for(int i = 0; i < hash.length && i < testHash.length; i++)
        {
            diff |= hash[i] ^ testHash[i];
        }

        return diff == 0;
    }

    private static String generateStorngPasswordHash(String password) throws NoSuchAlgorithmException, InvalidKeySpecException
    {
        int iterations = 1000;
        char[] chars = password.toCharArray();
        byte[] salt = getSalt().getBytes();

        PBEKeySpec spec = new PBEKeySpec(chars, salt, iterations, 64 * 8);
        SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
        byte[] hash = skf.generateSecret(spec).getEncoded();
        return iterations + ":" + toHex(salt) + ":" + toHex(hash);

    }

    private static String getSalt() throws NoSuchAlgorithmException
    {
        SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
        byte[] salt = new byte[16];
        sr.nextBytes(salt);
        return salt.toString();
    }

    private static String toHex(byte[] array) throws NoSuchAlgorithmException
    {
        BigInteger bi = new BigInteger(1, array);
        String hex = bi.toString(16);
        int paddingLength = (array.length * 2) - hex.length();
        if(paddingLength > 0)
        {
            return String.format("%0"  +paddingLength + "d", 0) + hex;
        }else{
            return hex;
        }
    }

    private static byte[] fromHex(String hex) throws NoSuchAlgorithmException
    {
        byte[] bytes = new byte[hex.length() / 2];
        for(int i = 0; i<bytes.length ;i++)
        {
            bytes[i] = (byte)Integer.parseInt(hex.substring(2 * i, 2 * i + 2), 16);
        }
        return bytes;
    }





}
