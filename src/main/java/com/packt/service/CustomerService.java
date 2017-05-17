package com.packt.service;

import com.packt.dao.CustomerDAO;
import com.packt.dao.UserRoleDAO;
import com.packt.data.CustomerData;
import com.packt.data.UserRoleData;
import com.packt.exception.ApplicationException;
import com.packt.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityExistsException;
import java.util.Date;

@Service
public class CustomerService {

    @Autowired
    CustomerDAO customerDAO;

    @Autowired
    UserRoleDAO userRoleDAO;

    public CustomerData registrationCustomer(CustomerData customerData, String matchingPassword) {
        if (!customerData.getUser().getPassword().equals(matchingPassword)) {
            throw new ApplicationException("DIFFERENT_PASSWORD");
        }
        if (!StringUtil.validateEmail(customerData.getEmail())) {
            throw new ApplicationException("WRONG_EMAIL_FORMAT", customerData.getEmail());
        }
        try {
            customerData.setRegistrationDate(new Date());
            customerData.getUser().setEnabled(false);
            customerData = customerDAO.save(customerData);
        } catch (EntityExistsException e) {
            throw new ApplicationException("USER_EXIST", customerData.getUser().getLogin());
        }
        UserRoleData userRoleData = new UserRoleData(UserRoleData.Role.USER, customerData.getUser());
        userRoleDAO.save(userRoleData);
        //TODO send confirmation email
        return customerData;
    }
}
