package com.packt.data;

import javax.persistence.*;
import java.io.Serializable;

@Entity(name = "CART_ITEM")
public class CartItemData implements Serializable {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    @Column(name = "QUANTITY")
    private Long quantity;

    @Column(name = "TOTAL_PRICE")
    private Long totalPrice;

    @Column(name = "PRODUCT_ID", insertable = false, updatable = false)
    private Long productId;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "PRODUCT_ID")
    private ProductData product;

    @Column(name = "CART_ID", insertable = false, updatable = false)
    private Long cartId;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "CART_ID")
    private CartData cart;

    public CartItemData() {
        super();
    }

    public ProductData getProduct() {
        return product;
    }

    public void setProduct(ProductData product) {
        this.product = product;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }

    public Long getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Long totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public Long getCartId() {
        return cartId;
    }

    public void setCartId(Long cartId) {
        this.cartId = cartId;
    }

    public CartData getCart() {
        return cart;
    }

    public void setCart(CartData cart) {
        this.cart = cart;
    }
}
