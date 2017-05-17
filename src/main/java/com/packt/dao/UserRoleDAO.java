package com.packt.dao;

import com.packt.data.UserRoleData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRoleDAO extends JpaRepository<UserRoleData, Long> {
}
