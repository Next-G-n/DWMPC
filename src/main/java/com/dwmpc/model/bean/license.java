package com.dwmpc.model.bean;

import java.util.Date;

public class license {
    int License_Id;
    String License_Number;
    String Date_Unix;
    String License_Type;

    public license(int license_Id, String license_Number, String date_Unix, String license_Type) {
        License_Id = license_Id;
        License_Number = license_Number;
        Date_Unix = date_Unix;
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
                ", Date_Unix='" + Date_Unix + '\'' +
                ", License_Type='" + License_Type + '\'' +
                '}';
    }
}
