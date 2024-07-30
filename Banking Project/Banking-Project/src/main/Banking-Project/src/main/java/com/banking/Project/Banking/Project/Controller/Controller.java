package com.banking.Project.Banking.Project.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.banking.Project.Banking.Project.user.Account;
import com.banking.Project.Banking.Project.user.RegistionFrom;
import com.banking.Project.Banking.Project.user.Withdraw;
import com.banking.Project.Banking.Project.user.user;
import com.banking.Project.Banking.Project.user.createAccount;

import jakarta.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@org.springframework.stereotype.Controller
public class Controller {
	@Autowired
	SessionFactory sf;

	private Map<String, user> users = new HashMap<>();
	private Map<String, Account> accounts = new HashMap<>();
	// private long userIdCounter = 1;

	@GetMapping("/login")
	public String showLoginPage() {
		return "userlogin";
	}

	@RequestMapping("userlogin")
	public String loginpageopan(user user, Model model) {
		Session ss = sf.openSession();
		user db = ss.get(user.class, user.getPassword());
		if (db != null) {
			if (user.getUsername().equals(db.getUsername())) {
				return "home";
			} else {
				return "userlogin";
			}
		} else {
			model.addAttribute("msg", "Invalid AccountNumber and password");

			return "userlogin";
		}
	}

	@GetMapping("/home")
	public String home(HttpSession session, Model model) {
		user user = (user) session.getAttribute("user");
		if (user != null) {
			model.addAttribute("user", user);
			model.addAttribute("account", accounts.get(user.getUsername()));
			return "home";
		} else {
			return "home";
		}
	}

	@GetMapping("/createAccount")
	public String showCreateAccountPage() {
		return "createAccount";
	}

//	@PostMapping("/createAccount")
//	public String createAccount(String username, String password) {
//		user user = new user(username, password);
//		Account account = new Account();
//		users.put(username, user);
//		accounts.put(username, account);
//		return "home";
//	}
	@RequestMapping("/createAccountt")
	public String usercreateaccountSave(createAccount createAcc) {
		Session ss = sf.openSession();
		Transaction t = ss.beginTransaction();
		ss.save(createAcc);
		t.commit();
		return "createAccount"; // jsp page
	}

	@GetMapping("/register")
	public String showRegisterPage() {
		return "register";
	}

//	@PostMapping("/register")
//	public String register(String username, String password) {
//		user user = new user(username, password);
//		users.put(username, user);
//		return "login";
//	}

	@RequestMapping("/registerr")
	public String RegisterFrom(RegistionFrom from) {
		Session ss = sf.openSession();
		Transaction t = ss.beginTransaction();
		ss.save(from);
		t.commit();
		return "register";
	}

	@RequestMapping("/withdraw")
	public String showWithdrawPage() {
		 
		
		
		return "withdraw";
	}

	@PostMapping("/withdraw")
	public String withdraw(HttpSession session, double amount, Model model) {
		user user = (user) session.getAttribute("user");
		if (user != null) {
			Account account = accounts.get(user.getUsername());
			if (account.getBalance() >= amount) {
				account.setBalance(account.getBalance() - amount);
				System.out.println("Amount debited successfully!"+amount);
				model.addAttribute("msg", "Amount debited successfully!");
			} else {
				model.addAttribute("msg", "Insufficient balance!");
			}
		} else {
			model.addAttribute("msg", "Amount debited successfully!");
		}
		return "withdraw";
	}

	@GetMapping("/deposite")
	public String showDepositPage() {
		return "deposite";
	}

	@PostMapping("/deposite")
	public String deposit(HttpSession session, double amount, Model model) {
		user user = (user) session.getAttribute("user");
		if (user != null) {
			Account account = accounts.get(user.getUsername());
			if (amount > 0) {
				account.setBalance(account.getBalance() + amount);
				model.addAttribute("msg", "Deposited successfully!");
			} else {
				model.addAttribute("msg", "Invalid amount!");
			} 
		}
		return "deposite";
	}
}
