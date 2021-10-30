package Core;

import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Admin
 */
public class JavaMailUtil {

    static int code;

    static {
        Random rnd = new Random();
        JavaMailUtil.setCode(rnd.nextInt(9999));
    }

    public static void setCode(int code) {
        JavaMailUtil.code = code;
    }

    public static int GetCode() {
        return code;
    }

    public static void sendMail(String recepient) throws MessagingException {
        Thread thread = new Thread(new Runnable() {
            private Message prepareMessage(Session session, String myAccountEmail, String recepient) {
                try {
                    Message message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(myAccountEmail));
                    message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
                    message.setSubject("my firt email form java app");

                    String htmlCode = " <h2>Code to Get New Password</h2>\n"
                            + "  <p>" + JavaMailUtil.code + "</p>";
                    message.setContent(htmlCode, "text/html");
                    return message;
                } catch (AddressException ex) {
                    Logger.getLogger(JavaMailUtil.class.getName()).log(Level.SEVERE, null, ex);
                } catch (MessagingException ex) {
                    Logger.getLogger(JavaMailUtil.class.getName()).log(Level.SEVERE, null, ex);
                }
                return null;
            }

            @Override
            public void run() {
                // TODO code application logic here
                Properties properties = new Properties();
                properties.put("mail.smtp.auth", "true");
                properties.put("mail.smtp.starttls.enable", "true");
                properties.put("mail.smtp.host", "smtp.gmail.com");
                properties.put("mail.smtp.port", "587");

                String myAccountEmail = "duckeducationsystem@gmail.com";
                String password = "Vietnam+1";

                Session session = Session.getInstance(properties, new Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(myAccountEmail, password);
                    }
                });
                Message message = prepareMessage(session, myAccountEmail, recepient);
                try {
                    Transport.send(message);
                } catch (MessagingException ex) {
                    Logger.getLogger(JavaMailUtil.class.getName()).log(Level.SEVERE, null, ex);
                }

                System.out.println("mess sent successfully");
            }
        });
        thread.start();
    }

}
