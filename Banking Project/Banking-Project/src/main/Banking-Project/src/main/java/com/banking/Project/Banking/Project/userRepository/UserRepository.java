package com.banking.Project.Banking.Project.userRepository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.banking.Project.Banking.Project.user.user;

public interface UserRepository extends JpaRepository<user, Long> {
    Optional<user> findByUsername(String username);
}
