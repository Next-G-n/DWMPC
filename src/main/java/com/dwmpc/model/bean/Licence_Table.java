package com.dwmpc.model.bean;

public class Licence_Table {
     String carrier_Number,start_date,end_date,Licence_type,status,company_Name;
     String licence_number;
     String CompanyEmail,companyPhoneNumber,companyId,applyId;

    public Licence_Table(String carrier_Number, String start_date, String end_date, String licence_type, String status, String company_Name, String licence_number, String companyEmail, String companyPhoneNumber, String companyId, String applyId) {
        this.carrier_Number = carrier_Number;
        this.start_date = start_date;
        this.end_date = end_date;
        Licence_type = licence_type;
        this.status = status;
        this.company_Name = company_Name;
        this.licence_number = licence_number;
        CompanyEmail = companyEmail;
        this.companyPhoneNumber = companyPhoneNumber;
        this.companyId = companyId;
        this.applyId = applyId;
    }

    public String getCompanyPhoneNumber() {
        return companyPhoneNumber;
    }

    public void setCompanyPhoneNumber(String companyPhoneNumber) {
        this.companyPhoneNumber = companyPhoneNumber;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getApplyId() {
        return applyId;
    }

    public void setApplyId(String applyId) {
        this.applyId = applyId;
    }

    public String getCompanyEmail() {
        return CompanyEmail;
    }

    public void setCompanyEmail(String companyEmail) {
        CompanyEmail = companyEmail;
    }

    public String getLicence_number() {
        return licence_number;
    }

    public void setLicence_number(String licence_number) {
        this.licence_number = licence_number;
    }

    public String getCarrier_Number() {
        return carrier_Number;
    }

    public void setCarrier_Number(String carrier_Number) {
        this.carrier_Number = carrier_Number;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public void setEnd_date(String end_date) {
        this.end_date = end_date;
    }

    public String getLicence_type() {
        return Licence_type;
    }

    public void setLicence_type(String licence_type) {
        Licence_type = licence_type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCompany_Name() {
        return company_Name;
    }

    public void setCompany_Name(String company_Name) {
        this.company_Name = company_Name;
    }
}
