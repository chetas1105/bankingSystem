package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {
	
	@Id
	private String CRN;
	
	@Column
	private String fname, lname, mobile_number, password, city, accountBalance, mpin, accountNo;

	public User() {
	}
	
	public User(String CRN, String accountBalance, String mpin, String accountNo) {
		super();
		CRN = this.CRN;
		this.accountBalance = accountBalance;
		this.mpin = mpin;
		this.accountNo = accountNo;
	}

	public User(String fname, String lname, String mobile_number, String password, String city,
			String accountBalance, String mpin, String accountNo) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.mobile_number = mobile_number;
		this.password = password;
		this.city = city;
		this.accountBalance = accountBalance;
		this.mpin = mpin;
		this.accountNo = accountNo;
	}
	
	public String getCRN() {
		return CRN;
	}

	public void setCRN(String cRN) {
		CRN = cRN;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getMobile_number() {
		return mobile_number;
	}

	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAccountBalance() {
		return accountBalance;
	}

	public void setAccountBalance(String accountBalance) {
		this.accountBalance = accountBalance;
	}

	public String getMpin() {
		return mpin;
	}

	public void setMpin(String mpin) {
		this.mpin = mpin;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	

}
