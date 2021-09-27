package com.dwmpc.model.bean;

import java.util.Date;

public class officerAction {
    int Officer_Action_Id;
    int User_Id;
    int Application_Status_Id;
    String Action_Taken;
    Date Date_Of_Action;
    String Delay_Time;

    public officerAction(int user_Id, int application_Status_Id, String action_Taken, String delay_Time) {
        User_Id = user_Id;
        Application_Status_Id = application_Status_Id;
        Action_Taken = action_Taken;
        Delay_Time = delay_Time;
    }

    public officerAction(int officer_Action_Id, int user_Id, int application_Status_Id, String action_Taken, Date date_Of_Action, String delay_Time) {
        Officer_Action_Id = officer_Action_Id;
        User_Id = user_Id;
        Application_Status_Id = application_Status_Id;
        Action_Taken = action_Taken;
        Date_Of_Action = date_Of_Action;
        Delay_Time = delay_Time;
    }

    public int getOfficer_Action_Id() {
        return Officer_Action_Id;
    }

    public void setOfficer_Action_Id(int officer_Action_Id) {
        Officer_Action_Id = officer_Action_Id;
    }

    public int getUser_Id() {
        return User_Id;
    }

    public void setUser_Id(int user_Id) {
        User_Id = user_Id;
    }

    public int getApplication_Status_Id() {
        return Application_Status_Id;
    }

    public void setApplication_Status_Id(int application_Status_Id) {
        Application_Status_Id = application_Status_Id;
    }

    public String getAction_Taken() {
        return Action_Taken;
    }

    public void setAction_Taken(String action_Taken) {
        Action_Taken = action_Taken;
    }

    public Date getDate_Of_Action() {
        return Date_Of_Action;
    }

    public void setDate_Of_Action(Date date_Of_Action) {
        Date_Of_Action = date_Of_Action;
    }

    public String getDelay_Time() {
        return Delay_Time;
    }

    public void setDelay_Time(String delay_Time) {
        Delay_Time = delay_Time;
    }

    @Override
    public String toString() {
        return "officerAction{" +
                "Officer_Action_Id=" + Officer_Action_Id +
                ", User_Id=" + User_Id +
                ", Application_Status_Id=" + Application_Status_Id +
                ", Action_Taken='" + Action_Taken + '\'' +
                ", Date_Of_Action=" + Date_Of_Action +
                ", Delay_Time=" + Delay_Time +
                '}';
    }
}
