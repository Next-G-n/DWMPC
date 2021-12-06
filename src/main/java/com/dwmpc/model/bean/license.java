package com.dwmpc.model.bean;

import java.util.Date;

public class license {
    int License_Id;
    String License_Number;
    String Date_Unix;
    String Start_Date;
    String Expiry_Date;
    String License_Type;

    public license(int license_Id, String license_Number, String date_Unix, String start_Date, String expiry_Date, String license_Type) {
        License_Id = license_Id;
        License_Number = license_Number;
        Date_Unix = date_Unix;
        Start_Date = start_Date;
        Expiry_Date = expiry_Date;
        License_Type = license_Type;
    }

    public int getLicense_Id() {
        return License_Id;
    }

    public void setLicense_Id(int license_Id) {
        License_Id = license_Id;
    }

    public String getLicense_Number() {
        return License_Number;
    }

    public void setLicense_Number(String license_Number) {
        License_Number = license_Number;
    }

    public String getDate_Unix() {
        return Date_Unix;
    }

    public void setDate_Unix(String date_Unix) {
        Date_Unix = date_Unix;
    }

    public String getStart_Date() {
        return Start_Date;
    }

    public void setStart_Date(String start_Date) {
        Start_Date = start_Date;
    }

    public String getExpiry_Date() {
        return Expiry_Date;
    }

    public void setExpiry_Date(String expiry_Date) {
        Expiry_Date = expiry_Date;
    }

    public String getLicense_Type() {
        return License_Type;
    }

    public void setLicense_Type(String license_Type) {
        License_Type = license_Type;
    }
}
