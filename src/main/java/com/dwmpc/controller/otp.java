package com.dwmpc.controller;

import com.twilio.Twilio;
import com.twilio.rest.verify.v2.service.Verification;
import com.twilio.rest.verify.v2.service.VerificationFetcher;

public class otp {

    // Find your Account SID and Auth Token at twilio.com/console
    // and set the environment variables. See http://twil.io/secure
    public static final String ACCOUNT_SID =("AC3fcd212cb95e2eb0a7cace746bc66dec");
    public static final String AUTH_TOKEN = ("488c43f866c001bc2b4aa13e95708e50");

    public static void main(String args[]){
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Verification verification = Verification.creator(
                        "VA28bbadab49fc07332a28fdcdcb1beb30",
                        "nshathisismile@gmail.com",
                        "email")
                .create();

        System.out.println(verification.getSid());
        VerificationFetcher verification1=Verification.fetcher("VA28bbadab49fc07332a28fdcdcb1beb30",verification.getSid());

        System.out.println(verification1.fetch());
    }

    public static void emailVerification(String email) {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Verification verification = Verification.creator(
                        "VA28bbadab49fc07332a28fdcdcb1beb30",
                        email,
                        "email")
                .create();

        System.out.println(verification.getSid());




    }
}
