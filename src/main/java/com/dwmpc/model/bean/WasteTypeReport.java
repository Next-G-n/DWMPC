package com.dwmpc.model.bean;

public class WasteTypeReport {
    int Company_Id;
    String Waste_Type;
    String Generated_Quantity;
    String Amount_Shipped;
    String Return;
    String Date_Of_Report;

    public WasteTypeReport(int company_Id, String waste_Type, String generated_Quantity, String amount_Shipped, String aReturn, String date_Of_Report) {
        Company_Id = company_Id;
        Waste_Type = waste_Type;
        Generated_Quantity = generated_Quantity;
        Amount_Shipped = amount_Shipped;
        Return = aReturn;
        Date_Of_Report = date_Of_Report;
    }

    public int getCompany_Id() {
        return Company_Id;
    }

    public void setCompany_Id(int company_Id) {
        Company_Id = company_Id;
    }

    public String getWaste_Type() {
        return Waste_Type;
    }

    public void setWaste_Type(String waste_Type) {
        Waste_Type = waste_Type;
    }

    public String getGenerated_Quantity() {
        return Generated_Quantity;
    }

    public void setGenerated_Quantity(String generated_Quantity) {
        Generated_Quantity = generated_Quantity;
    }

    public String getAmount_Shipped() {
        return Amount_Shipped;
    }

    public void setAmount_Shipped(String amount_Shipped) {
        Amount_Shipped = amount_Shipped;
    }

    public String getReturn() {
        return Return;
    }

    public void setReturn(String aReturn) {
        Return = aReturn;
    }

    public String getDate_Of_Report() {
        return Date_Of_Report;
    }

    public void setDate_Of_Report(String date_Of_Report) {
        Date_Of_Report = date_Of_Report;
    }
}
