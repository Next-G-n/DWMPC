package com.dwmpc.model.bean;

import java.io.InputStream;
import java.sql.Blob;

public class vehicle {
    int Chase_number;
    int Company_Id;
    String Vehicle_type;
    String Unladen_Weight;
    String Waste_Type;
    String Annual_Quantity;
    String Type_Of_Waste_covered_during_Transportation;
    String Carrie_number;
    InputStream BA_permit;
    InputStream Certification_of_Cooperation;
    InputStream Payment_receipt;
    InputStream Facility_Licence;
    InputStream Hazardous_waste;
    InputStream Training_on_health_and_safety;
    InputStream Fire_fighting_and_first_aid;
    InputStream Health_and_Environment;

    public vehicle(int chase_number, int company_Id, String vehicle_type, String unladen_Weight, String waste_Type, String annual_Quantity, String type_Of_Waste_covered_during_Transportation, String carrie_number, InputStream BA_permit, InputStream certification_of_Cooperation, InputStream payment_receipt, InputStream facility_Licence, InputStream hazardous_waste, InputStream training_on_health_and_safety, InputStream fire_fighting_and_first_aid, InputStream health_and_Environment) {
        Chase_number = chase_number;
        Company_Id = company_Id;
        Vehicle_type = vehicle_type;
        Unladen_Weight = unladen_Weight;
        Waste_Type = waste_Type;
        Annual_Quantity = annual_Quantity;
        Type_Of_Waste_covered_during_Transportation = type_Of_Waste_covered_during_Transportation;
        Carrie_number = carrie_number;
        this.BA_permit = BA_permit;
        Certification_of_Cooperation = certification_of_Cooperation;
        Payment_receipt = payment_receipt;
        Facility_Licence = facility_Licence;
        Hazardous_waste = hazardous_waste;
        Training_on_health_and_safety = training_on_health_and_safety;
        Fire_fighting_and_first_aid = fire_fighting_and_first_aid;
        Health_and_Environment = health_and_Environment;
    }

    public int getChase_number() {
        return Chase_number;
    }

    public void setChase_number(int chase_number) {
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

    public InputStream getBA_permit() {
        return BA_permit;
    }

    public void setBA_permit(InputStream BA_permit) {
        this.BA_permit = BA_permit;
    }

    public InputStream getCertification_of_Cooperation() {
        return Certification_of_Cooperation;
    }

    public void setCertification_of_Cooperation(InputStream certification_of_Cooperation) {
        Certification_of_Cooperation = certification_of_Cooperation;
    }

    public InputStream getPayment_receipt() {
        return Payment_receipt;
    }

    public void setPayment_receipt(InputStream payment_receipt) {
        Payment_receipt = payment_receipt;
    }

    public InputStream getFacility_Licence() {
        return Facility_Licence;
    }

    public void setFacility_Licence(InputStream facility_Licence) {
        Facility_Licence = facility_Licence;
    }

    public InputStream getHazardous_waste() {
        return Hazardous_waste;
    }

    public void setHazardous_waste(InputStream hazardous_waste) {
        Hazardous_waste = hazardous_waste;
    }

    public InputStream getTraining_on_health_and_safety() {
        return Training_on_health_and_safety;
    }

    public void setTraining_on_health_and_safety(InputStream training_on_health_and_safety) {
        Training_on_health_and_safety = training_on_health_and_safety;
    }

    public InputStream getFire_fighting_and_first_aid() {
        return Fire_fighting_and_first_aid;
    }

    public void setFire_fighting_and_first_aid(InputStream fire_fighting_and_first_aid) {
        Fire_fighting_and_first_aid = fire_fighting_and_first_aid;
    }

    public InputStream getHealth_and_Environment() {
        return Health_and_Environment;
    }

    public void setHealth_and_Environment(InputStream health_and_Environment) {
        Health_and_Environment = health_and_Environment;
    }

    @Override
    public String toString() {
        return "vehicle{" +
                "Chase_number=" + Chase_number +
                ", Company_Id=" + Company_Id +
                ", Vehicle_type='" + Vehicle_type + '\'' +
                ", Unladen_Weight='" + Unladen_Weight + '\'' +
                ", Waste_Type='" + Waste_Type + '\'' +
                ", Annual_Quantity='" + Annual_Quantity + '\'' +
                ", Type_Of_Waste_covered_during_Transportation='" + Type_Of_Waste_covered_during_Transportation + '\'' +
                ", Carrie_number='" + Carrie_number + '\'' +
                ", BA_permit=" + BA_permit +
                ", Certification_of_Cooperation=" + Certification_of_Cooperation +
                ", Payment_receipt=" + Payment_receipt +
                ", Facility_Licence=" + Facility_Licence +
                ", Hazardous_waste=" + Hazardous_waste +
                ", Training_on_health_and_safety=" + Training_on_health_and_safety +
                ", Fire_fighting_and_first_aid=" + Fire_fighting_and_first_aid +
                ", Health_and_Environment=" + Health_and_Environment +
                '}';
    }
}
