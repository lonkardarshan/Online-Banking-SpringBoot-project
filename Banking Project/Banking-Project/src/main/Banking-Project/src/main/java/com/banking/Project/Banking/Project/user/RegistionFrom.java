package com.banking.Project.Banking.Project.user;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class RegistionFrom {
	private String name;
	@Id
	private String Email;
	private String phone;
	private String password;

	public RegistionFrom() {
		super();
	}

	public RegistionFrom(String name, String email, String phone, String password) {
		super();
		this.name = name;
		Email = email;
		this.phone = phone;
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "RegistionFrom [name=" + name + ", Email=" + Email + ", phone=" + phone + ", password=" + password + "]";
	}

}
