package com.dwmpc.model.bean;

import java.util.Date;

public class company_personnel {
    int Company_Personnel_Id;
    int Company_Id;
    String First_Name;
    String Last_Name;
    String Job_Title;
    String Qualification;
    String Trained_In_Waste_Management;
    String Employee_Status;
    String Delete_Date;
    String Contact;


    public company_personnel(int company_Personnel_Id, int company_Id, String first_Name, String last_Name, String job_Title, String qualification, String trained_In_Waste_Management, String employee_Status, String contact) {
        Company_Personnel_Id = company_Personnel_Id;
        Company_Id = company_Id;
        First_Name = first_Name;
        Last_Name = last_Name;
        Job_Title = job_Title;
        Qualification = qualification;
        Trained_In_Waste_Management = trained_In_Waste_Management;
        Employee_Status = employee_Status;
        Contact=contact;
    }

    public company_personnel(int company_Personnel_Id, String first_Name, String last_Name, String job_Title, String qualification, String trained_In_Waste_Management,String contact) {
        Company_Personnel_Id = company_Personnel_Id;
        First_Name = first_Name;
        Last_Name = last_Name;
        Job_Title = job_Title;
        Qualification = qualification;
        Trained_In_Waste_Management = trained_In_Waste_Management;
        Contact=contact;
    }

    public int getCompany_Personnel_Id() {
        return Company_Personnel_Id;
    }

    public String getContact() {
        return Contact;
    }

    public void setContact(String contact) {
        Contact = contact;
    }

    public void setCompany_Personnel_Id(int company_Personnel_Id) {
        Company_Personnel_Id = company_Personnel_Id;
    }

    public int getCompany_Id() {
        return Company_Id;
    }

    public void setCompany_Id(int company_Id) {
        Company_Id = company_Id;
    }

    public String getFirst_Name() {
        return First_Name;
    }

    public void setFirst_Name(String first_Name) {
        First_Name = first_Name;
    }

    public String getLast_Name() {
        return Last_Name;
    }

    public void setLast_Name(String last_Name) {
        Last_Name = last_Name;
    }

    public String getJob_Title() {
        return Job_Title;
    }

    public void setJob_Title(String job_Title) {
        Job_Title = job_Title;
    }

    public String getQualification() {
        return Qualification;
    }

    public void setQualification(String qualification) {
        Qualification = qualification;
    }

    public String getTrained_In_Waste_Management() {
        return Trained_In_Waste_Management;
    }

    public void setTrained_In_Waste_Management(String trained_In_Waste_Management) {
        Trained_In_Waste_Management = trained_In_Waste_Management;
    }

    public String getEmployee_Status() {
        return Employee_Status;
    }

    public void setEmployee_Status(String employee_Status) {
        Employee_Status = employee_Status;
    }

  

    public String getDelete_Date() {
        return Delete_Date;
    }

    public void setDelete_Date(String delete_Date) {
        Delete_Date = delete_Date;
    }

    @Override
    public String toString() {
        return "company_personnel{" +
                "Company_Personnel_Id=" + Company_Personnel_Id +
                ", Company_Id=" + Company_Id +
                ", First_Name='" + First_Name + '\'' +
                ", Last_Name='" + Last_Name + '\'' +
                ", Job_Title='" + Job_Title + '\'' +
                ", Qualification='" + Qualification + '\'' +
                ", Trained_In_Waste_Management='" + Trained_In_Waste_Management + '\'' +
                ", Employee_Status='" + Employee_Status + '\'' +

                ", Delete_Date=" + Delete_Date +
                '}';
    }
}
