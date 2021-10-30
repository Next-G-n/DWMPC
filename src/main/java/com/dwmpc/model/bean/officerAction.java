package com.dwmpc.model.bean;

import java.util.Date;

public class officerAction {
    int Officer_Action_Id;
    int User_Id;
    int Application_Status_Id;
    String Action_Taken;

    public officerAction(int officer_Action_Id, int user_Id, int application_Status_Id, String action_Taken) {
        Officer_Action_Id = officer_Action_Id;
        User_Id = user_Id;
        Application_Status_Id = application_Status_Id;
        Action_Taken = action_Taken;
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

    @Override
    public String toString() {
        return "officerAction{" +
                "Officer_Action_Id=" + Officer_Action_Id +
                ", User_Id=" + User_Id +
                ", Application_Status_Id=" + Application_Status_Id +
                ", Action_Taken='" + Action_Taken + '\'' +
                '}';
    }
}
