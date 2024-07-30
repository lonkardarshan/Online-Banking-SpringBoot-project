package com.banking.Project.Banking.Project.user;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Withdraw {
	@Id
	private String name;
	private String pin;
	private String amount;

	/**
	 * 
	 */
	public Withdraw() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param name
	 * @param pin
	 * @param amount
	 */
	public Withdraw(String name, String pin, String amount) {
		super();
		this.name = name;
		this.pin = pin;
		this.amount = amount;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "Withdraw [name=" + name + ", pin=" + pin + ", amount=" + amount + "]";
	}

}
