package kursach.dabrabyt.bank;

import kursach.dabrabyt.bank.model.DepositModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class DepositServlet extends HttpServlet {
	String deposit_type, deposit_term, deposit_rate, deposit_currency, password, re_password, value;
	int account_number, deposit_amount;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;utf-8");

		account_number = Integer.parseInt(request.getParameter("account_number"));
		value = request.getParameter("value");
		deposit_type = request.getParameter("deposit_type");
		deposit_term = request.getParameter("deposit_term");
		deposit_rate = request.getParameter("deposit_rate");
		deposit_currency = request.getParameter("deposit_currency");
		deposit_amount = Integer.parseInt(request.getParameter("deposit_amount"));
		password = request.getParameter("password");
		re_password = request.getParameter("re_password");

		DepositModel dpModel = new DepositModel();
		dpModel.setAccount_number(account_number);
		dpModel.setValue(value);
		dpModel.setDeposit_type(deposit_type);
		dpModel.setDeposit_term(deposit_term);
		dpModel.setDeposit_rate(deposit_rate);
		dpModel.setDeposit_currency(deposit_currency);
		dpModel.setDeposit_amount(deposit_amount);

		if (password.equals(re_password)) {
			request.setAttribute("Deposit_information", dpModel);
			RequestDispatcher rd = request.getRequestDispatcher("DepositResult.jsp");
			rd.forward(request, response);

		} else {
			request.setAttribute("Not_Enough", "Yes");
			RequestDispatcher rd = request.getRequestDispatcher("SingleDeposit.jsp");
			rd.forward(request, response);
		}
	}
}
