package com.packt.dao.impl;

import com.packt.dao.AbstractDAO;
import com.packt.data.OrderData;
import com.packt.data.UserData;

public class OrderDAOImpl extends AbstractDAO<OrderData> {
    public OrderDAOImpl() {
        super(OrderData.class);
    }
}
