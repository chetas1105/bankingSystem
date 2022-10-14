package model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity
@Table(name="user_transactions")
public class AllTransactions {
	
	@Id
	private int id;
	@Column
	private String CRN, accountNo, dateTime, amount, details;

	
	public AllTransactions(){
		
	}
	public AllTransactions(String accountNo, String dateTime, String amount, String details) {
		super();
		this.accountNo = accountNo;
		this.dateTime = dateTime;
		this.amount = amount;
		this.details = details;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getDate() {
		return dateTime;
	}

	public void setDate(String dateTime) {
		this.dateTime = dateTime;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}
	
	
}
