package com.packt.dao;

import com.packt.data.CustomerData;
import com.packt.data.ProductData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerDAO extends JpaRepository<CustomerData, Long> {

    ProductData getCustomerById(Long id);
}
