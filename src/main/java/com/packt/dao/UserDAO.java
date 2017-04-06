package com.packt.dao;


import com.packt.data.UserData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDAO extends JpaRepository<UserData, Long> {
    UserData getUserByLogin(String login);

    UserData getUserById(Long id);
}
