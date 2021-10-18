package com.dwmpc.model.bean;

public class Monthly_Report {
    int Report_id;
    String Employee_Type;
    int Company_id;
    int C_M;
    int C_F;
    int N_M;
    int N_F;
    double Salary;

    public Monthly_Report(int report_id, String employee_Type, int company_id, int c_M, int c_F, int n_M, int n_F, double salary) {
        Report_id = report_id;
        Employee_Type = employee_Type;
        Company_id = company_id;
        C_M = c_M;
        C_F = c_F;
        N_M = n_M;
        N_F = n_F;
        Salary = salary;
    }

    public int getReport_id() {
        return Report_id;
    }

    public void setReport_id(int report_id) {
        Report_id = report_id;
    }

    public String getEmployee_Type() {
        return Employee_Type;
    }

    public void setEmployee_Type(String employee_Type) {
        Employee_Type = employee_Type;
    }

    public int getCompany_id() {
        return Company_id;
    }

    public void setCompany_id(int company_id) {
        Company_id = company_id;
    }

    public int getC_M() {
        return C_M;
    }

    public void setC_M(int c_M) {
        C_M = c_M;
    }

    public int getC_F() {
        return C_F;
    }

    public void setC_F(int c_F) {
        C_F = c_F;
    }

    public int getN_M() {
        return N_M;
    }

    public void setN_M(int n_M) {
        N_M = n_M;
    }

    public int getN_F() {
        return N_F;
    }

    public void setN_F(int n_F) {
        N_F = n_F;
    }

    public double getSalary() {
        return Salary;
    }

    public void setSalary(double salary) {
        Salary = salary;
    }
}
