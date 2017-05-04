package com.packt.dao.impl;

import com.packt.dao.AbstractDAO;
import com.packt.data.CustomerData;

import java.util.Date;

public class CustomerDAOImpl extends AbstractDAO<CustomerData> {
    public CustomerDAOImpl() {
        super(CustomerData.class);
    }

    public void removeCustomer(CustomerData customer) {
        customer.setAuditRD(new Date());
        customer.getUser().setEnabled(false);
        customer.getUser().setAuditRD(new Date());
        customer.getAddress().setAuditRD(new Date());
        getEntityManager().merge(customer);
    }

    public void removeCustomer(Long id) {
        CustomerData customer = getEntityManager().find(CustomerData.class, id);
        customer.setAuditRD(new Date());
        customer.getUser().setEnabled(false);
        customer.getUser().setAuditRD(new Date());
        customer.getAddress().setAuditRD(new Date());
        getEntityManager().merge(customer);
    }
}
