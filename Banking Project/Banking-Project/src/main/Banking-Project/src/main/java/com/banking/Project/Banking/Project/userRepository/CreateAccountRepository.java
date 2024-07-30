package com.banking.Project.Banking.Project.userRepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.banking.Project.Banking.Project.user.Account;
import com.banking.Project.Banking.Project.user.user;

public interface CreateAccountRepository extends JpaRepository<Account, Long> {
    List<Account> findByUser(user user);
}
