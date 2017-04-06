package com.packt.dao;

import com.packt.data.OrderData;
import com.packt.data.ProductData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDAO extends JpaRepository<OrderData, Long> {

    List<OrderData> getOrdersByCustomerId(Long customerId);

    ProductData getOrderById(Long id);
}
