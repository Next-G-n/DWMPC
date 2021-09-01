package com.dwmpc.model.bean;

import java.util.Date;

public class license {
    int License_Id;
    String License_Number;
    Date Date;
    String Date_Unix;
    Date Expiry_Date;
    String License_Type;

    public license(int license_Id, String license_Number, java.util.Date date, String date_Unix, java.util.Date expiry_Date, String license_Type) {
        License_Id = license_Id;
        License_Number = license_Number;
        Date = date;
        Date_Unix = date_Unix;
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

    public java.util.Date getDate() {
        return Date;
    }

    public void setDate(java.util.Date date) {
        Date = date;
    }

    public String getDate_Unix() {
        return Date_Unix;
    }

    public void setDate_Unix(String date_Unix) {
        Date_Unix = date_Unix;
    }

    public java.util.Date getExpiry_Date() {
        return Expiry_Date;
    }

    public void setExpiry_Date(java.util.Date expiry_Date) {
        Expiry_Date = expiry_Date;
    }

    public String getLicense_Type() {
        return License_Type;
    }

    public void setLicense_Type(String license_Type) {
        License_Type = license_Type;
    }

    @Override
    public String toString() {
        return "license{" +
                "License_Id=" + License_Id +
                ", License_Number='" + License_Number + '\'' +
                ", Date=" + Date +
                ", Date_Unix='" + Date_Unix + '\'' +
                ", Expiry_Date=" + Expiry_Date +
                ", License_Type='" + License_Type + '\'' +
                '}';
    }
}
