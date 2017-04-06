package com.packt.dao;

import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Transactional
public class AbstractDAO<T> {

    @PersistenceContext
    private EntityManager entityManager;

    private Class<T> type;

    public AbstractDAO(Class<T> type) {
        this.type = type;
    }

    public EntityManager getEntityManager() {
        return entityManager;
    }
}
