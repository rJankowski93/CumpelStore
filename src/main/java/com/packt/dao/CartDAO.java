package com.packt.dao;

import com.packt.data.CartData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartDAO extends JpaRepository<CartData, Long> {

    CartData getCartById(Long id);
}
