package com.dwmpc.model.bean;

public class Add_statues {
    int userID;
    String add_Roles,current,default1;

    public Add_statues(int userID, String add_Roles, String current, String default1) {
        this.userID = userID;
        this.add_Roles = add_Roles;
        this.current = current;
        this.default1 = default1;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getAdd_Roles() {
        return add_Roles;
    }

    public void setAdd_Roles(String add_Roles) {
        this.add_Roles = add_Roles;
    }

    public String getCurrent() {
        return current;
    }

    public void setCurrent(String current) {
        this.current = current;
    }

    public String getDefault1() {
        return default1;
    }

    public void setDefault1(String default1) {
        this.default1 = default1;
    }
}
