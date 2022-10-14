package model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class TransactionDao {
	
	Configuration cfg;
	SessionFactory factory;
	Session session;
	Transaction tx;
	
	private void getConnect()
	{
		  cfg = new Configuration();
		 cfg.configure("hibernate.cfg.xml"); 
		  
		 
		  factory= cfg.buildSessionFactory();
		   session = factory.openSession();
		 
		 tx = session.beginTransaction();
	}
	
	public String addFund(String accountNo, String dateTime, String amount, String details)
	{
		getConnect();
		
		AllTransactions all = new AllTransactions(accountNo, dateTime, amount, details);
		
		session.save(all);
		
		tx.commit();

		System.out.println("Add fund successfully.....!!");
		 
		 endConnect();
		return "data inserted";
		
	}
	
	public List<AllTransactions> show(String accountNo)
	{
		getConnect();
		Query q2=session.createQuery("from AllTransactions where accountNo = '"+accountNo+"'");
		
		List<AllTransactions> ls2= q2.list();
		
		for(AllTransactions i:ls2)
		{
			System.out.println(i.getAccountNo());
		}
		endConnect();
		
		
		return ls2;
	}
	
	public String withdrawFund(String accountNo, String dateTime, String amount, String details)
	{
		getConnect();
		
		AllTransactions all = new AllTransactions(accountNo, dateTime, amount, details);
		 
		System.out.println("before save " +accountNo);
		
		session.save(all);
		
		System.out.println("after save  = " + accountNo);
		tx.commit();

		System.out.println("Withdraw fund successfully.....!!");
		 
		 endConnect();
		return "data withdraw";
		
	}
	
	private void endConnect()
	{
		
		 session.close();
		 factory.close();
	}

}
