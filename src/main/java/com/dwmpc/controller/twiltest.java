package com.dwmpc.controller;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class twiltest {

    // Find your Account Sid and Token at twilio.com/user/account
    public static final String ACCOUNT_SID = "AC3fcd212cb95e2eb0a7cace746bc66dec";
    public static final String AUTH_TOKEN = "488c43f866c001bc2b4aa13e95708e50";


    public static String sendSms(String phone) throws Exception{
        try {
            Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

            Message message = Message.creator(new PhoneNumber("+26776222559"),
                    new PhoneNumber("+12674483154"),
                    "Please Bring your car for Inspection at your nearest branch").create();
            return "Sms sent";
        }catch (Exception e){
            System.out.println("Error sending Sms :"+e);
            return "Failed to Sent Sms";
        }
    }

}
