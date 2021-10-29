package com.dwmpc.model.bean;

public class CountGeneral {
    int company;
    int vehicle;
    int employee;

    public CountGeneral(int company, int vehicle, int employee) {
        this.company = company;
        this.vehicle = vehicle;
        this.employee = employee;
    }

    public int getCompany() {
        return company;
    }

    public void setCompany(int company) {
        this.company = company;
    }

    public int getVehicle() {
        return vehicle;
    }

    public void setVehicle(int vehicle) {
        this.vehicle = vehicle;
    }

    public int getEmployee() {
        return employee;
    }

    public void setEmployee(int employee) {
        this.employee = employee;
    }
}
