package com.dwmpc.controller;
// using SendGrid's Java Library
// https://github.com/sendgrid/sendgrid-java

import com.sendgrid.Method;
import com.sendgrid.Request;
import com.sendgrid.Response;
import com.sendgrid.SendGrid;
import com.sendgrid.helpers.mail.Mail;
import com.sendgrid.helpers.mail.objects.Content;
import com.sendgrid.helpers.mail.objects.Email;

import java.io.IOException;

public class SendEmail {




    public static String sentEmail(String email){
            Email from = new Email("danielchobakaone@gmail.com");
            String subject = "Inspection";
            Email to = new Email(email);
            Content content = new Content("text/" +
                    "plain", "Please Bring your car for Inspection at your nearest branch");
        String msg=mailInfo(from,subject,to,content);
        return msg;
        }

    public static String sentDeclineEmail(String email,String reason,String regist,String action ){
        Email from = new Email("danielchobakaone@gmail.com");
        String subject = "Vehicle "+regist+" was "+action+"d";
        Email to = new Email(email);
        Content content = new Content("text/" +
                "plain", reason);
        String msg=mailInfo(from,subject,to,content);
        return msg;
    }
    public static String mailInfo(Email from, String subject, Email to, Content content){
        Mail mail = new Mail(from, subject, to, content);

        SendGrid sg = new SendGrid("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");
        Request request = new Request();
        try {
            request.setMethod(Method.POST);
            request.setEndpoint("mail/send");
            request.setBody(mail.build());
            Response response = sg.api(request);
            System.out.println(response.getStatusCode());
            System.out.println(response.getBody());
            System.out.println(response.getHeaders());
            return "Email sent";
        } catch (IOException ex) {
            System.out.println("Error Sending Email :"+ex);
            return "Failed to send Email";
        }
    }

}
