package com.packt.data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


@Entity(name = "CART")
public class CartData implements Serializable {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "ID", referencedColumnName = "ID")
    private List<CartItemData> cartItems;

    @Column(name = "GRAND_TOTAL")
    private Long grandTotal;


    public CartData() {
        cartItems = new ArrayList<CartItemData>();
        grandTotal = 0L;
    }

    public CartData(String cartId) {
        this();
        this.id = cartId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Long getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(Long grandTotal) {
        this.grandTotal = grandTotal;
    }

    public List<CartItemData> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItemData> cartItems) {
        this.cartItems = cartItems;
    }
}
