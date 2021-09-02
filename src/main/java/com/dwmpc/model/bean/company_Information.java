package com.dwmpc.model.bean;

import java.util.Date;

public class company_Information {
    int Company_Id;
    int User_Id;
    String Company_Name;
    String Email;
    String Street_Address;
    String Street_Address2;
    String Region_Town_Village;
    String Region;
    String Plot_Number;
    String Ward;
    String Telephone;
    String Fax_Number;
    String Phone_Number;
    String Company_Status;
    String Date_Unix;
    String Company_License_Status;

    public company_Information(int company_Id, int user_Id, String company_Name, String email, String street_Address, String street_Address2, String region_Town_Village, String region, String plot_Number, String ward, String telephone, String fax_Number, String phone_Number, String company_Status, String date_Unix, String company_License_Status) {
        Company_Id = company_Id;
        User_Id = user_Id;
        Company_Name = company_Name;
        Email = email;
        Street_Address = street_Address;
        Street_Address2 = street_Address2;
        Region_Town_Village = region_Town_Village;
        Region = region;
        Plot_Number = plot_Number;
        Ward = ward;
        Telephone = telephone;
        Fax_Number = fax_Number;
        Phone_Number = phone_Number;
        Company_Status = company_Status;
        Date_Unix = date_Unix;
        Company_License_Status = company_License_Status;
    }

    public int getCompany_Id() {
        return Company_Id;
    }

    public void setCompany_Id(int company_Id) {
        Company_Id = company_Id;
    }

    public int getUser_Id() {
        return User_Id;
    }

    public void setUser_Id(int user_Id) {
        User_Id = user_Id;
    }

    public String getCompany_Name() {
        return Company_Name;
    }

    public void setCompany_Name(String company_Name) {
        Company_Name = company_Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getStreet_Address() {
        return Street_Address;
    }

    public void setStreet_Address(String street_Address) {
        Street_Address = street_Address;
    }

    public String getStreet_Address2() {
        return Street_Address2;
    }

    public void setStreet_Address2(String street_Address2) {
        Street_Address2 = street_Address2;
    }

    public String getRegion_Town_Village() {
        return Region_Town_Village;
    }

    public void setRegion_Town_Village(String region_Town_Village) {
        Region_Town_Village = region_Town_Village;
    }

    public String getRegion() {
        return Region;
    }

    public void setRegion(String region) {
        Region = region;
    }

    public String getPlot_Number() {
        return Plot_Number;
    }

    public void setPlot_Number(String plot_Number) {
        Plot_Number = plot_Number;
    }

    public String getWard() {
        return Ward;
    }

    public void setWard(String ward) {
        Ward = ward;
    }

    public String getTelephone() {
        return Telephone;
    }

    public void setTelephone(String telephone) {
        Telephone = telephone;
    }

    public String getFax_Number() {
        return Fax_Number;
    }

    public void setFax_Number(String fax_Number) {
        Fax_Number = fax_Number;
    }

    public String getPhone_Number() {
        return Phone_Number;
    }

    public void setPhone_Number(String phone_Number) {
        Phone_Number = phone_Number;
    }

    public String getCompany_Status() {
        return Company_Status;
    }

    public void setCompany_Status(String company_Status) {
        Company_Status = company_Status;
    }

    public String getDate_Unix() {
        return Date_Unix;
    }

    public void setDate_Unix(String date_Unix) {
        Date_Unix = date_Unix;
    }

    public String getCompany_License_Status() {
        return Company_License_Status;
    }

    public void setCompany_License_Status(String company_License_Status) {
        Company_License_Status = company_License_Status;
    }

    @Override
    public String toString() {
        return "company_Information{" +
                "Company_Id=" + Company_Id +
                ", User_Id=" + User_Id +
                ", Company_Name='" + Company_Name + '\'' +
                ", Email='" + Email + '\'' +
                ", Street_Address='" + Street_Address + '\'' +
                ", Street_Address2='" + Street_Address2 + '\'' +
                ", Region_Town_Village='" + Region_Town_Village + '\'' +
                ", Region='" + Region + '\'' +
                ", Plot_Number='" + Plot_Number + '\'' +
                ", Ward='" + Ward + '\'' +
                ", Telephone=" + Telephone +
                ", Fax_Number=" + Fax_Number +
                ", Phone_Number=" + Phone_Number +
                ", Company_Status='" + Company_Status + '\'' +
                ", Date_Unix='" + Date_Unix + '\'' +
                ", Company_License_Status='" + Company_License_Status + '\'' +
                '}';
    }
}
