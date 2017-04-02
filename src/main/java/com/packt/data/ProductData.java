package com.packt.data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "PRODUCT")
public class ProductData implements Serializable {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "CODE")
    private String code;

    @Column(name = "NAME")
    private String name;

    @Column(name = "PRICE")
    private Long price;

    @Column(name = "DESCRIPTION")
    private String description;

    @Column(name = "MANUFACTURER")
    private String manufacturer;

    @Column(name = "CATEGORY")
    private String category;

    @Column(name = "UNITS_IN_STOCK")
    private Long unitsInStock;

    @Column(name = "STATE")
    private String state;

    @Column(name = "IS_PROMOTION")
    private Boolean isPromotion;

    public ProductData() {
        super();
    }

    public ProductData(String code, String name, Long unitPrice) {
        this.code = code;
        this.name = name;
        this.price = unitPrice;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Long getUnitsInStock() {
        return unitsInStock;
    }

    public void setUnitsInStock(Long unitsInStock) {
        this.unitsInStock = unitsInStock;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Boolean getIsPromotion() {
        return isPromotion;
    }

    public void setIsPromotion(Boolean isPromotion) {
        this.isPromotion = isPromotion;
    }
}
