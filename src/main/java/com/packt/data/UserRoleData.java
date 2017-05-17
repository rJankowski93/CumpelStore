package com.packt.data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "USER_ROLE")
public class UserRoleData implements Serializable {

    public interface Role {
        String USER = "USER";
        String ADMIN = "ADMIN";
    }


    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "ROLE")
    private String role;

    @Column(name = "USER_ID", insertable = false, updatable = false)
    private Long userId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "USER_ID")
    private UserData user;

    public UserRoleData() {
    }

    public UserRoleData(String role, UserData user) {
        this.role = role;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public String getRole() {
        return role;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public UserData getUser() {
        return user;
    }

    public void setUser(UserData user) {
        this.user = user;
    }
}
