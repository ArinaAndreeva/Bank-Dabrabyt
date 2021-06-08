package kursach.dabrabyt.bank;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kursach.dabrabyt.bank.model.AccountModel;

public class CreateAccountServlet extends HttpServlet {
	String  surname, name, patronymic, birth, series, number, date, identification, authority, birthplace, city, address, home, mobile,
			email, workplace, position, marital, citizenship, disability, pensioner, military, income, username, password, re_password;
	int account_number;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;utf-8");

		surname = request.getParameter("surname");
		name = request.getParameter("name");
		patronymic = request.getParameter("patronymic");
		birth = request.getParameter("birth");
		series = request.getParameter("series");
		number = request.getParameter("number");
		date = request.getParameter("date");
		identification = request.getParameter("identification");
		authority = request.getParameter("authority");
		birthplace = request.getParameter("birthplace");
		city = request.getParameter("city");
		address = request.getParameter("address");
		home = request.getParameter("home");
		mobile = request.getParameter("mobile");
		email = request.getParameter("email");
		workplace = request.getParameter("workplace");
		position = request.getParameter("position");
		marital = request.getParameter("marital");
		citizenship = request.getParameter("citizenship");
		disability = request.getParameter("disability");
		pensioner = request.getParameter("pensioner");
		military = request.getParameter("military");
		income = request.getParameter("income");
		username = request.getParameter("username");
		password = request.getParameter("password");
		re_password = request.getParameter("re_password");

		Random rand = new Random();
		int random_number_1 = 1000000 + rand.nextInt(9999999);
		account_number = random_number_1;
		System.out.println(account_number);

		AccountModel am = new AccountModel();
		am.setAccount_number(account_number);
		am.setSurname(surname);
		am.setName(name);
		am.setPatronymic(patronymic);
		am.setBirth(birth);
		am.setSeries(series);
		am.setNumber(number);
		am.setDate(date);
		am.setIdentification(identification);
		am.setAuthority(authority);
		am.setBirthplace(birthplace);
		am.setCity(city);
		am.setAddress(address);
		am.setHome(home);
		am.setMobile(mobile);
		am.setEmail(email);
		am.setWorkplace(workplace);
		am.setPosition(position);
		am.setMarital(marital);
		am.setCitizenship(citizenship);
		am.setDisability(disability);
		am.setPensioner(pensioner);
		am.setMilitary(military);
		am.setIncome(income);
		am.setUsername(username);
		am.setPassword(password);

		if (password.equals(re_password)) {
			request.setAttribute("Account_details", am);
			RequestDispatcher rd = request.getRequestDispatcher("CreateAccountResult.jsp");
			rd.forward(request, response);

		} else {
			request.setAttribute("Not_enough", "Yes");
			RequestDispatcher rd = request.getRequestDispatcher("CreateNewAccount.jsp");
			rd.forward(request, response);
		}
	}

}
