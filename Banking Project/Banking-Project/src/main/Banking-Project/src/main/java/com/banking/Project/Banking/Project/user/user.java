package com.banking.Project.Banking.Project.user;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class user {
	private String username;
	@Id
	private String password;
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Account> accounts = new ArrayList<Account>();

	public user() {
		super();
		// TODO Auto-generated constructor stub
	}

	public user(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "user [username=" + username + ", password=" + password + "]";
	}

}
