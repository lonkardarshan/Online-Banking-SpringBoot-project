package com.banking.Project.Banking.Project.service;


import org.springframework.ui.Model;

import com.banking.Project.Banking.Project.user.user;

// Assuming UserDetails is a class, not an interface

public interface UserService {
    void userRegister(user user);
    UserDetails loadUserByUsername (String username) ;
    void deposit(Long userId, double amount);
    void withdraw(Long userId, double amount);
	String userRegister(user user, Model model);

    }

