package com.packt.service;

import com.packt.dao.CustomerDAO;
import com.packt.dao.UserDAO;
import com.packt.dao.UserRoleDAO;
import com.packt.data.CustomerData;
import com.packt.data.UserData;
import com.packt.data.UserRoleData;
import com.packt.exception.ApplicationException;
import com.packt.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.persistence.EntityExistsException;
import java.util.Date;

@Service
public class CustomerService {

    @Autowired
    CustomerDAO customerDAO;

    @Autowired
    UserRoleDAO userRoleDAO;

    @Autowired
    SendMailSSL sendMailSSL;

    @Autowired
    UserDAO userDAO;

    public CustomerData registrationCustomer(CustomerData customerData, String matchingPassword) throws ApplicationException {
        if (!customerData.getUser().getPassword().equals(matchingPassword)) {
            throw new ApplicationException("DIFFERENT_PASSWORD", "The password and second password is not the same");
        }
        if (!StringUtil.validateEmail(customerData.getEmail())) {
            throw new ApplicationException("WRONG_EMAIL_FORMAT", "E-mail: " + customerData.getEmail() + " has wrong format");
        }
        try {
            customerData.setRegistrationDate(new Date());
            customerData.getUser().setEnabled(false);
            customerData = customerDAO.save(customerData);
        } catch (EntityExistsException e) {
            throw new ApplicationException("USER_EXIST", "User: " + customerData.getUser().getLogin() + "already exist");
        }
        userRoleDAO.save(new UserRoleData(UserRoleData.Role.USER, customerData.getUser()));
        try {
            sendMailSSL.sendConfirmingMail(customerData);
        } catch (MessagingException e) {
            throw new ApplicationException("ERROR_SEND_EMAIL","Error during send email");
        }
        return customerData;
    }

    public void activateUser(Long userId, String login) {
        UserData user = userDAO.getUserById(userId);
        if (!user.getLogin().equals(login)) {
            throw new ApplicationException("WRONG_CONFIRMATION_LINK","Wrong confirmation link");
        }
        user.setEnabled(Boolean.TRUE);
        userDAO.flush();
    }
}

