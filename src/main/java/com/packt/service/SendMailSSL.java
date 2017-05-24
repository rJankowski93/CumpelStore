package com.packt.service;

import com.packt.data.CustomerData;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

@Service
public class SendMailSSL {

    private String username = "challenger.application.aghpk@gmail.com";
    private String password = "challenger123";
    private String confirmationLink = "http://localhost:8080/confirmRegistration?id=";

    public void sendConfirmingMail(CustomerData customer) throws MessagingException {
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "465");
        Session session = Session.getDefaultInstance(properties,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress("challenger.application.aghpk@gmail.com"));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(customer.getEmail()));
        message.setSubject("Confirmation registration");
        String textMessage = "Dear " + customer.getFirstname() +
                " if you want active your account, you have to click this link:" + "\n\n";
        textMessage = textMessage + confirmationLink + customer.getUser().getId().toString() + "&login=" + customer.getUser().getLogin();
        message.setText(textMessage);
        Transport.send(message);
    }
}
