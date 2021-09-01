package com.dwmpc.model.bean;

import java.util.Date;

public class user {
    int user_Id;
    String first_name;
    String Last_name;
    String email;
    String user_type;
    String password;
    int omang;
    int contact;

    String location;

    public user(int user_Id, String first_name, String last_name, String email, String user_type, String password, int omang, int contact, String location) {
        this.user_Id = user_Id;
        this.first_name = first_name;
        Last_name = last_name;
        this.email = email;
        this.user_type = user_type;
        this.password = password;
        this.omang = omang;
        this.contact = contact;
        this.location = location;
    }

    public int getUser_Id() {
        return user_Id;
    }

    public void setUser_Id(int user_Id) {
        this.user_Id = user_Id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return Last_name;
    }

    public void setLast_name(String last_name) {
        Last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUser_type() {
        return user_type;
    }

    public void setUser_type(String user_type) {
        this.user_type = user_type;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getOmang() {
        return omang;
    }

    public void setOmang(int omang) {
        this.omang = omang;
    }

    public int getContact() {
        return contact;
    }

    public void setContact(int contact) {
        this.contact = contact;
    }


    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return "user{" +
                "user_Id=" + user_Id +
                ", first_name='" + first_name + '\'' +
                ", Last_name='" + Last_name + '\'' +
                ", email='" + email + '\'' +
                ", user_type='" + user_type + '\'' +
                ", password='" + password + '\'' +
                ", omang='" + omang + '\'' +
                ", contact='" + contact + '\'' +
                ", location='" + location + '\'' +
                '}';
    }
}
