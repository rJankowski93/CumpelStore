package com.packt.dao.impl;

import com.packt.dao.AbstractDAO;
import com.packt.data.UserData;


public class UserDAOImpl extends AbstractDAO<UserData> {

    public UserDAOImpl() {
        super(UserData.class);
    }
}
