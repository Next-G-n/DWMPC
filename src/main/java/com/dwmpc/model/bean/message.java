package com.dwmpc.model.bean;

import java.util.Date;

public class message {
    int Message_Id;
    int Sender_Id;
    int Reciever_Id;
    int Extra_Id;
    int Extra_Id2;
    int Is_Read;
    String Message;
    String Date_Of_Delivery_Unix;
    String Message_Status;

    public message(int message_Id, int sender_Id, int reciever_Id, int extra_Id, int extra_Id2, int is_Read, String message, String date_Of_Delivery_Unix, String message_Status) {
        Message_Id = message_Id;
        Sender_Id = sender_Id;
        Reciever_Id = reciever_Id;
        Extra_Id = extra_Id;
        Extra_Id2 = extra_Id2;
        Is_Read = is_Read;
        Message = message;
        Date_Of_Delivery_Unix = date_Of_Delivery_Unix;
        Message_Status = message_Status;
    }

    public int getMessage_Id() {
        return Message_Id;
    }

    public void setMessage_Id(int message_Id) {
        Message_Id = message_Id;
    }

    public int getSender_Id() {
        return Sender_Id;
    }

    public void setSender_Id(int sender_Id) {
        Sender_Id = sender_Id;
    }

    public int getReciever_Id() {
        return Reciever_Id;
    }

    public void setReciever_Id(int reciever_Id) {
        Reciever_Id = reciever_Id;
    }

    public int getExtra_Id() {
        return Extra_Id;
    }

    public void setExtra_Id(int extra_Id) {
        Extra_Id = extra_Id;
    }

    public int getExtra_Id2() {
        return Extra_Id2;
    }

    public void setExtra_Id2(int extra_Id2) {
        Extra_Id2 = extra_Id2;
    }

    public int getIs_Read() {
        return Is_Read;
    }

    public void setIs_Read(int is_Read) {
        Is_Read = is_Read;
    }

    public String getMessage() {
        return Message;
    }

    public void setMessage(String message) {
        Message = message;
    }

    public String getDate_Of_Delivery_Unix() {
        return Date_Of_Delivery_Unix;
    }

    public void setDate_Of_Delivery_Unix(String date_Of_Delivery_Unix) {
        Date_Of_Delivery_Unix = date_Of_Delivery_Unix;
    }

    public String getMessage_Status() {
        return Message_Status;
    }

    public void setMessage_Status(String message_Status) {
        Message_Status = message_Status;
    }

    @Override
    public String toString() {
        return "message{" +
                "Message_Id=" + Message_Id +
                ", Sender_Id=" + Sender_Id +
                ", Reciever_Id=" + Reciever_Id +
                ", Extra_Id=" + Extra_Id +
                ", Extra_Id2=" + Extra_Id2 +
                ", Is_Read=" + Is_Read +
                ", Message='" + Message + '\'' +
                ", Date_Of_Delivery_Unix='" + Date_Of_Delivery_Unix + '\'' +
                ", Message_Status='" + Message_Status + '\'' +
                '}';
    }
}
