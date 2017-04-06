package com.packt.dao;

import com.packt.data.ProductData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDAO extends JpaRepository<ProductData, Long> {

    List<ProductData> getProductsByName(String name);

    List<ProductData> getProductsByCategoryOrCategory(String category,String category2);

    ProductData getProductByCode(String code);

    ProductData getProductById(Long id);

    List<ProductData> getPromotionProductsList();

    @Query("select product from ProductData product where product.unitsInStock > :unitsInStock")
    List<ProductData> getProductsByGreaterUnitsInStock(@Param("unitsInStock") Long unitsInStock);
}
