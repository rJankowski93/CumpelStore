package com.packt.dao.impl;

import com.packt.dao.AbstractDAO;
import com.packt.data.ProductData;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

public class ProductDAOImpl extends AbstractDAO<ProductData> {

    public ProductDAOImpl() {
        super(ProductData.class);
    }

    public List<ProductData> getPromotionProductsList() {
        CriteriaBuilder cb = getEntityManager().getCriteriaBuilder();
        CriteriaQuery<ProductData> cq = cb.createQuery(ProductData.class);
        Root<ProductData> item = cq.from(ProductData.class);
        cq.select(item).where(cb.equal(item.get("isPromotion"), true));
        List<ProductData> products = getEntityManager().createQuery(cq).getResultList();
        return products;
    }
}
