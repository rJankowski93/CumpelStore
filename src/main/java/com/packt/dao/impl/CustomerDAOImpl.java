package com.packt.dao.impl;

import com.packt.dao.AbstractDAO;
import com.packt.data.CustomerData;
import com.packt.data.OrderData;

public class CustomerDAOImpl extends AbstractDAO<CustomerData> {
    public CustomerDAOImpl() {
        super(CustomerData.class);
    }
}
