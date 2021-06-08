package kursach.dabrabyt.bank;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kursach.dabrabyt.bank.database.JDBC_Connect;
import kursach.dabrabyt.bank.model.AccountModel;

public class LoginServlet extends HttpServlet {
	String username, password;
	Connection conn;
	AccountModel am = null;
	boolean pass_wrong = false;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;utf-8");

		username = request.getParameter("username");
		password = request.getParameter("password");

		System.out.println(username);
		System.out.println(password);

		try {

			JDBC_Connect connect = new JDBC_Connect();
			conn = connect.getConnection();

			ResultSet rs = conn.createStatement().executeQuery(
					"select * from account where username ='" + username + "'" + "and password ='" + password + "'");

			if (!rs.isBeforeFirst()) {
				request.setAttribute("isPassOK", "No");
				RequestDispatcher rd = request.getRequestDispatcher("LogIn.jsp");
				rd.forward(request, response);
			} else {
				while (rs.next()) {
					pass_wrong = true;

					am = new AccountModel();
					am.setAccount_number(rs.getInt(1));
					am.setSurname(rs.getString(2));
					am.setName(rs.getString(3));
					am.setPatronymic(rs.getString(4));
					am.setBirth(rs.getString(5));
					am.setSeries(rs.getString(6));
					am.setNumber(rs.getString(7));
					am.setDate(rs.getString(8));
					am.setIdentification(rs.getString(9));
					am.setAuthority(rs.getString(10));
					am.setBirthplace(rs.getString(11));
					am.setCity(rs.getString(12));
					am.setAddress(rs.getString(13));
					am.setHome(rs.getString(14));
					am.setMobile(rs.getString(15));
					am.setEmail(rs.getString(16));
					am.setWorkplace(rs.getString(17));
					am.setPosition(rs.getString(18));
					am.setMarital(rs.getString(19));
					am.setCitizenship(rs.getString(20));
					am.setDisability(rs.getString(21));
					am.setPensioner(rs.getString(22));
					am.setMilitary(rs.getString(23));
					am.setIncome(rs.getString(24));
					am.setUsername(rs.getString(25));
					am.setPassword(rs.getString(26));

					ResultSet rs1 = conn.createStatement().executeQuery("select * from deposit where account_number ='" + am.getAccount_number() + "'");

					while (rs1.next()) {
						am.setDeposit_amount(rs1.getInt(7));
					}

					HttpSession session = request.getSession();
					session.setAttribute("userDetails", am);

					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);

				}
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}
}
