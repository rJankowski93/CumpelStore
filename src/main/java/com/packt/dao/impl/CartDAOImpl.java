package com.packt.dao.impl;

import com.packt.dao.AbstractDAO;
import com.packt.data.CartData;
import com.packt.data.CustomerData;

public class CartDAOImpl extends AbstractDAO<CartData> {
    public CartDAOImpl() {
        super(CartData.class);
    }
}
