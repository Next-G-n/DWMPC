package com.dwmpc.model.bean;

import java.util.Date;

public class application_status {
    int Application_Status_Id;
    String Level;
    String Current_Office;
    String Chase_Number;
    Date Application_Date;
    String Unix_Application_Date;
    String Status_Of_Application;



    public application_status(int application_Status_Id, String level, String current_Office, String chase_Number, Date application_Date, String unix_Application_Date, String status_Of_Application) {
        Application_Status_Id = application_Status_Id;
        Level = level;
        Current_Office = current_Office;
        Chase_Number = chase_Number;
        Application_Date = application_Date;
        Unix_Application_Date = unix_Application_Date;
        Status_Of_Application = status_Of_Application;
    }

    public int getApplication_Status_Id() {
        return Application_Status_Id;
    }

    public void setApplication_Status_Id(int application_Status_Id) {
        Application_Status_Id = application_Status_Id;
    }

    public String getLevel() {
        return Level;
    }

    public void setLevel(String level) {
        Level = level;
    }

    public String getCurrent_Office() {
        return Current_Office;
    }

    public void setCurrent_Office(String current_Office) {
        Current_Office = current_Office;
    }

    public String getChase_Number() {
        return Chase_Number;
    }

    public void setChase_Number(String chase_Number) {
        Chase_Number = chase_Number;
    }

    public Date getApplication_Date() {
        return Application_Date;
    }

    public void setApplication_Date(Date application_Date) {
        Application_Date = application_Date;
    }

    public String getUnix_Application_Date() {
        return Unix_Application_Date;
    }

    public void setUnix_Application_Date(String unix_Application_Date) {
        Unix_Application_Date = unix_Application_Date;
    }

    public String getStatus_Of_Application() {
        return Status_Of_Application;
    }

    public void setStatus_Of_Application(String status_Of_Application) {
        Status_Of_Application = status_Of_Application;
    }

    @Override
    public String toString() {
        return "application_status{" +
                "Application_Status_Id=" + Application_Status_Id +
                ", Level='" + Level + '\'' +
                ", Current_Office='" + Current_Office + '\'' +
                ", Chase_Number='" + Chase_Number + '\'' +
                ", Application_Date=" + Application_Date +
                ", Unix_Application_Date='" + Unix_Application_Date + '\'' +
                ", Status_Of_Application='" + Status_Of_Application + '\'' +
                '}';
    }
}
