package model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class UserDao {
	
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
	
	public String registerUser(User u)
	{
		getConnect();
		 
		 session.save(u);
		 tx.commit();
		 System.out.println("Stored successfully.....!!");
		 
		 endConnect();
		return "data inserted";
		
	}
	
	public boolean checkUser(String crn,String pass){
		getConnect();
		
		Query q=session.createQuery("from User u where u.CRN=:q and u.password=:p");
		
		q.setParameter("q", crn);
		q.setParameter("p", pass);
  
      List<User> ls=q.list();
      for(User u2:ls)
		{
			if(crn.equals(u2.getCRN()) && pass.equals(u2.getPassword()))
			{
				return true;
			}
		}
	
		endConnect();
		return false;
	}
	
	public List<User> showData()
	{
		getConnect();

		Query<User> q = session.createQuery("from User u");
		
		List<User> all = q.list();

		System.out.println("Database contents delivered..."); 

		endConnect();
		
		return all;
	}
	
	public int updateAmount(String amt, String c)
	{
		getConnect();
		String hql = "UPDATE User set accountBalance = :acc "  + 
	             "WHERE CRN = :crn";
		
	Query query = session.createQuery(hql);
	query.setParameter("acc", amt);
	query.setParameter("crn", c);
	int result = query.executeUpdate();

		endConnect();
		return result;
	}
	
	
	
	private void endConnect()
	{
		
		 session.close();
		 factory.close();
	}
 
	
	 
	  
	
	  
	


}
