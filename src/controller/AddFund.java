package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AllTransactions;
import model.TransactionDao;
import model.User;
import model.UserDao;

@WebServlet("/addfund")
public class AddFund extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddFund() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		String pin = (String) session.getAttribute("mpin");
		String CRN = (String) session.getAttribute("CRN");
		String accountNo = (String) session.getAttribute("accountNo");
		String accountBalance = (String) session.getAttribute("accountBalance");
		Date d = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateTime =dateFormat.format(d);
		
		String amount = request.getParameter("amount");
		String mpin = request.getParameter("mpin");

		out.print(pin + " " + CRN + " " + accountNo + " " + amount + " " + mpin + " " + accountBalance + " ");

		int amt1 = Integer.parseInt(accountBalance);
		int amt2 = Integer.parseInt(amount);
		String total = String.valueOf(amt1 + amt2);


		if (pin.equals(mpin)) {

			int res = new UserDao().updateAmount(total, CRN);

			if (res > 0) {
				String msg = new TransactionDao().addFund(accountNo, dateTime, amount, "Credited");

				if (!msg.equals(null)) {
					request.setAttribute("status", "Success");
					System.out.print("Success");
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("userDashBoard.jsp");
					requestDispatcher.forward(request, response);
				}

			} else {
				request.setAttribute("status", "Invalid");
				System.out.print("Invalid");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("addFund.jsp");
				requestDispatcher.forward(request, response);
			}

		}
	}

}
