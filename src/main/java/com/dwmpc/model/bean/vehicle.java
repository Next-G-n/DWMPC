package com.dwmpc.model.bean;

import java.io.InputStream;
import java.sql.Blob;

public class vehicle {
    String Chase_number;
    int Company_Id;
    String Vehicle_type;
    String Unladen_Weight;
    String Waste_Type;
    String Annual_Quantity;
    String Type_Of_Waste_covered_during_Transportation;
    String Carrie_number;
    String BA_permit;
    String Payment_receipt;
    String Certification_of_Cooperation;
    String Facility_Licence;
    String PrPD;
    String hazardous_waste;
    String training_on_health_and_safety;
    String Fire_fighting_and_first_aid;
    String Health_and_Environment;
    String Road_Wortiness;
    String Blue_book;
    //String own_vehicle;
    String affidavit;
    String Own;
    String Status;

    public vehicle(String chase_number, int company_Id, String vehicle_type, String unladen_Weight, String waste_Type, String annual_Quantity, String type_Of_Waste_covered_during_Transportation, String carrie_number, String BA_permit, String payment_receipt, String certification_of_Cooperation, String facility_Licence, String prPD, String hazardous_waste, String training_on_health_and_safety, String fire_fighting_and_first_aid, String health_and_Environment, String road_Wortiness, String blue_book, String affidavit, String own) {
        Chase_number = chase_number;
        Company_Id = company_Id;
        Vehicle_type = vehicle_type;
        Unladen_Weight = unladen_Weight;
        Waste_Type = waste_Type;
        Annual_Quantity = annual_Quantity;
        Type_Of_Waste_covered_during_Transportation = type_Of_Waste_covered_during_Transportation;
        Carrie_number = carrie_number;
        this.BA_permit = BA_permit;
        Payment_receipt = payment_receipt;
        Certification_of_Cooperation = certification_of_Cooperation;
        Facility_Licence = facility_Licence;
        PrPD = prPD;
        this.hazardous_waste = hazardous_waste;
        this.training_on_health_and_safety = training_on_health_and_safety;
        Fire_fighting_and_first_aid = fire_fighting_and_first_aid;
        Health_and_Environment = health_and_Environment;
        Road_Wortiness = road_Wortiness;
        Blue_book = blue_book;
        this.affidavit = affidavit;
        Own = own;
    }

    public vehicle(String chase_number, String vehicle_type, String unladen_Weight, String waste_Type, String annual_Quantity, String type_Of_Waste_covered_during_Transportation, String carrie_number, String own, String status) {
        Chase_number = chase_number;
        Vehicle_type = vehicle_type;
        Unladen_Weight = unladen_Weight;
        Waste_Type = waste_Type;
        Annual_Quantity = annual_Quantity;
        Type_Of_Waste_covered_during_Transportation = type_Of_Waste_covered_during_Transportation;
        Carrie_number = carrie_number;
        Own = own;
        Status = status;
    }



    public vehicle(String chase_number, String certification_of_Cooperation, String hazardous_waste, String training_on_health_and_safety, String fire_fighting_and_first_aid, String health_and_Environment, String road_Wortiness) {
        Chase_number = chase_number;
        Certification_of_Cooperation = certification_of_Cooperation;
        this.hazardous_waste = hazardous_waste;
        this.training_on_health_and_safety = training_on_health_and_safety;
        Fire_fighting_and_first_aid = fire_fighting_and_first_aid;
        Health_and_Environment = health_and_Environment;
        Road_Wortiness = road_Wortiness;
    }


    public vehicle(String chase_number, String BA_permit, String payment_receipt, String certification_of_Cooperation, String facility_Licence, String prPD, String hazardous_waste, String training_on_health_and_safety, String fire_fighting_and_first_aid, String health_and_Environment, String road_Wortiness, String blue_book, String affidavit) {
        Chase_number = chase_number;
        this.BA_permit = BA_permit;
        Payment_receipt = payment_receipt;
        Certification_of_Cooperation = certification_of_Cooperation;
        Facility_Licence = facility_Licence;
        PrPD = prPD;
        this.hazardous_waste = hazardous_waste;
        this.training_on_health_and_safety = training_on_health_and_safety;
        Fire_fighting_and_first_aid = fire_fighting_and_first_aid;
        Health_and_Environment = health_and_Environment;
        Road_Wortiness = road_Wortiness;
        Blue_book = blue_book;
        this.affidavit = affidavit;
    }

    public vehicle(String chase_number, String blue_book) {
        Chase_number = chase_number;
        Blue_book = blue_book;
    }

    public String getOwn() {
        return Own;
    }

    public void setOwn(String own) {
        Own = own;
    }

    public String getHazardous_waste() {
        return hazardous_waste;
    }

    public void setHazardous_waste(String hazardous_waste) {
        this.hazardous_waste = hazardous_waste;
    }

    public String getChase_number() {
        return Chase_number;
    }

    public void setChase_number(String chase_number) {
        Chase_number = chase_number;
    }

    public int getCompany_Id() {
        return Company_Id;
    }

    public void setCompany_Id(int company_Id) {
        Company_Id = company_Id;
    }

    public String getVehicle_type() {
        return Vehicle_type;
    }

    public void setVehicle_type(String vehicle_type) {
        Vehicle_type = vehicle_type;
    }

    public String getUnladen_Weight() {
        return Unladen_Weight;
    }

    public void setUnladen_Weight(String unladen_Weight) {
        Unladen_Weight = unladen_Weight;
    }

    public String getWaste_Type() {
        return Waste_Type;
    }

    public void setWaste_Type(String waste_Type) {
        Waste_Type = waste_Type;
    }

    public String getAnnual_Quantity() {
        return Annual_Quantity;
    }

    public void setAnnual_Quantity(String annual_Quantity) {
        Annual_Quantity = annual_Quantity;
    }

    public String getType_Of_Waste_covered_during_Transportation() {
        return Type_Of_Waste_covered_during_Transportation;
    }

    public void setType_Of_Waste_covered_during_Transportation(String type_Of_Waste_covered_during_Transportation) {
        Type_Of_Waste_covered_during_Transportation = type_Of_Waste_covered_during_Transportation;
    }

    public String getCarrie_number() {
        return Carrie_number;
    }

    public void setCarrie_number(String carrie_number) {
        Carrie_number = carrie_number;
    }

    public String getBA_permit() {
        return BA_permit;
    }

    public void setBA_permit(String BA_permit) {
        this.BA_permit = BA_permit;
    }

    public String getPayment_receipt() {
        return Payment_receipt;
    }

    public void setPayment_receipt(String payment_receipt) {
        Payment_receipt = payment_receipt;
    }

    public String getCertification_of_Cooperation() {
        return Certification_of_Cooperation;
    }

    public void setCertification_of_Cooperation(String certification_of_Cooperation) {
        Certification_of_Cooperation = certification_of_Cooperation;
    }

    public String getFacility_Licence() {
        return Facility_Licence;
    }

    public void setFacility_Licence(String facility_Licence) {
        Facility_Licence = facility_Licence;
    }

    public String getPrPD() {
        return PrPD;
    }

    public void setPrPD(String prPD) {
        PrPD = prPD;
    }

    public String getTraining_on_health_and_safety() {
        return training_on_health_and_safety;
    }

    public void setTraining_on_health_and_safety(String training_on_health_and_safety) {
        this.training_on_health_and_safety = training_on_health_and_safety;
    }

    public String getFire_fighting_and_first_aid() {
        return Fire_fighting_and_first_aid;
    }

    public void setFire_fighting_and_first_aid(String fire_fighting_and_first_aid) {
        Fire_fighting_and_first_aid = fire_fighting_and_first_aid;
    }

    public String getHealth_and_Environment() {
        return Health_and_Environment;
    }

    public void setHealth_and_Environment(String health_and_Environment) {
        Health_and_Environment = health_and_Environment;
    }

    public String getRoad_Wortiness() {
        return Road_Wortiness;
    }

    public void setRoad_Wortiness(String road_Wortiness) {
        Road_Wortiness = road_Wortiness;
    }

    public String getBlue_book() {
        return Blue_book;
    }

    public void setBlue_book(String blue_book) {
        Blue_book = blue_book;
    }

    public String getAffidavit() {
        return affidavit;
    }

    public void setAffidavit(String affidavit) {
        this.affidavit = affidavit;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    @Override
    public String toString() {
        return "vehicle{" +
                "Chase_number='" + Chase_number + '\'' +
                ", Company_Id=" + Company_Id +
                ", Vehicle_type='" + Vehicle_type + '\'' +
                ", Unladen_Weight='" + Unladen_Weight + '\'' +
                ", Waste_Type='" + Waste_Type + '\'' +
                ", Annual_Quantity='" + Annual_Quantity + '\'' +
                ", Type_Of_Waste_covered_during_Transportation='" + Type_Of_Waste_covered_during_Transportation + '\'' +
                ", Carrie_number='" + Carrie_number + '\'' +
                ", BA_permit='" + BA_permit + '\'' +
                ", Payment_receipt='" + Payment_receipt + '\'' +
                ", Certification_of_Cooperation='" + Certification_of_Cooperation + '\'' +
                ", Facility_Licence='" + Facility_Licence + '\'' +
                ", PrPD='" + PrPD + '\'' +
                ", hazardous_waste='" + hazardous_waste + '\'' +
                ", training_on_health_and_safety='" + training_on_health_and_safety + '\'' +
                ", Fire_fighting_and_first_aid='" + Fire_fighting_and_first_aid + '\'' +
                ", Health_and_Environment='" + Health_and_Environment + '\'' +
                ", Road_Wortiness='" + Road_Wortiness + '\'' +
                ", Blue_book='" + Blue_book + '\'' +
                ", affidavit='" + affidavit + '\'' +
                '}';
    }
}
