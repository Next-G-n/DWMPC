package com.dwmpc.model.bean;

public class inspection {
    int Inspection_Id;
    int Officer_Action_Id;
    String General_Check_List;
    String Additional_Check_List;
    String Hazardous_Check_List;

    public inspection(int inspection_Id, int officer_Action_Id, String general_Check_List, String additional_Check_List, String hazardous_Check_List) {
        Inspection_Id = inspection_Id;
        Officer_Action_Id = officer_Action_Id;
        General_Check_List = general_Check_List;
        Additional_Check_List = additional_Check_List;
        Hazardous_Check_List = hazardous_Check_List;
    }

    public int getInspection_Id() {
        return Inspection_Id;
    }

    public void setInspection_Id(int inspection_Id) {
        Inspection_Id = inspection_Id;
    }

    public int getOfficer_Action_Id() {
        return Officer_Action_Id;
    }

    public void setOfficer_Action_Id(int officer_Action_Id) {
        Officer_Action_Id = officer_Action_Id;
    }

    public String getGeneral_Check_List() {
        return General_Check_List;
    }

    public void setGeneral_Check_List(String general_Check_List) {
        General_Check_List = general_Check_List;
    }

    public String getAdditional_Check_List() {
        return Additional_Check_List;
    }

    public void setAdditional_Check_List(String additional_Check_List) {
        Additional_Check_List = additional_Check_List;
    }

    public String getHazardous_Check_List() {
        return Hazardous_Check_List;
    }

    public void setHazardous_Check_List(String hazardous_Check_List) {
        Hazardous_Check_List = hazardous_Check_List;
    }

    @Override
    public String toString() {
        return "inspection{" +
                "Inspection_Id=" + Inspection_Id +
                ", Officer_Action_Id=" + Officer_Action_Id +
                ", General_Check_List='" + General_Check_List + '\'' +
                ", Additional_Check_List='" + Additional_Check_List + '\'' +
                ", Hazardous_Check_List='" + Hazardous_Check_List + '\'' +
                '}';
    }
}
