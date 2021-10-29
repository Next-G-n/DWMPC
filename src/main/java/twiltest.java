import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

    public class twiltest {

        // Find your Account Sid and Token at twilio.com/user/account
        public static final String ACCOUNT_SID = "AC3fcd212cb95e2eb0a7cace746bc66dec";
        public static final String AUTH_TOKEN = "488c43f866c001bc2b4aa13e95708e50";

        public static void main(String[] args) {
            Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

            Message message = Message.creator(new PhoneNumber("+26776222559"),
                    new PhoneNumber("+12674483154"),
                    "This is the ship that made the Kessel Run in fourteen parsecs?").create();

            System.out.println(message.getSid());
        }

}
