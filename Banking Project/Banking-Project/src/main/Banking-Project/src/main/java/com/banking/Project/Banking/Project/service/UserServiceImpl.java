package com.banking.Project.Banking.Project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.banking.Project.Banking.Project.user.Account;
import com.banking.Project.Banking.Project.user.user;
import com.banking.Project.Banking.Project.userRepository.CreateAccountRepository;
import com.banking.Project.Banking.Project.userRepository.UserRepository;

@Service
public abstract class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CreateAccountRepository accountRepository;

    @Override
    public void userRegister(user user) {
        // Implement user registration logic
    }

    @Override
    public UserDetails loadUserByUsername(String username) {
        // Implement logic to load user details by username
        // (You should use userRepository.findByUsername(username) here)
        return null;  // Placeholder, you need to return UserDetails
    }

    @Override
    public void deposit(Long userId, double amount) {
        user user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found")); 
        Account account = accountRepository.findByUser(user).stream().findFirst()
                .orElseThrow(() -> new RuntimeException("Account not found"));

        account.setBalance(account.getBalance() + amount);
        accountRepository.save(account);
    }

    @Override
    public void withdraw(Long userId, double amount) {
        user user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));
        Account account = accountRepository.findByUser(user).stream().findFirst()
                .orElseThrow(() -> new RuntimeException("Account not found"));

        if (account.getBalance() >= amount) {
            account.setBalance(account.getBalance() - amount);
            System.out.println("the is money is debited successfuly:"+ amount);
            accountRepository.save(account);
        } else {
        	System.out.println("insufficent plese check balnce:"+amount);
            throw new RuntimeException("Insufficient balance");
        }
    }

    @Override
    public String userRegister(user user, Model model) {
        // TODO Auto-generated method stub
        return null;
    }

	 
}
