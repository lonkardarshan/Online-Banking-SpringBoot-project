package com.banking.Project.Banking.Project.user;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class createAccount {
	private String name;
	private String address;
	private String Email;
	private String password;// Changed from Adders to address
	@Id
	private String phone;
	private String adharcrad;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAdharcrad() {
		return adharcrad;
	}

	public void setAdharcrad(String adharcrad) {
		this.adharcrad = adharcrad;
	}

	@Override
	public String toString() {
		return "createAccount [name=" + name + ", address=" + address + ", Email=" + Email + ", password=" + password
				+ ", phone=" + phone + ", adharcrad=" + adharcrad + "]";
	}

}
