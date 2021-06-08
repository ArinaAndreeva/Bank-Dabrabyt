package kursach.dabrabyt.bank.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import kursach.dabrabyt.bank.model.AccountModel;
import kursach.dabrabyt.bank.model.DepositModel;

public class DatabaseOperations {
	Connection conn;
	int count1;

	public boolean setAccountInformation(AccountModel model) throws Exception {
		try {
			JDBC_Connect connect = new JDBC_Connect();
			conn = connect.getConnection();
			PreparedStatement ps1 = conn.prepareStatement("insert into account(account_number, surname, name, patronymic, birth," +
					"series, number, date, identification, authority, birthplace, city, address, home, mobile, email, workplace, position," +
					"marital, citizenship, disability, pensioner, military, income, username, password)" +
					"values('" + model.getAccount_number() + "','" + model.getSurname() + "','" + model.getName() + "','"
					+ model.getPatronymic() + "','" + model.getBirth() + "','" + model.getSeries() + "','" + model.getNumber() + "','"
					+ model.getDate() + "','" + model.getIdentification() + "','" + model.getAuthority() + "','" + model.getBirthplace() + "','"
					+ model.getCity() + "','" + model.getAddress() + "','" + model.getHome() + "','" + model.getMobile() + "','" + model.getEmail() + "','"
					+ model.getWorkplace() + "','" + model.getPosition() + "','" + model.getMarital() + "','" + model.getCitizenship() + "','"
					+ model.getDisability() + "','" + model.getPensioner() + "','" + model.getMilitary() + "','" + model.getIncome() + "','"
					+ model.getUsername() + "','" + model.getPassword() + "')");
			count1 = ps1.executeUpdate();
			System.out.println("Inserted " + count1 + " row");

			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return (count1 > 0);
	}

	public AccountModel getAccountInformation(Connection conn, int account_number) throws Exception {
		AccountModel am = new AccountModel();

		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from account where account_number ='" + account_number + "'");
		while (rs.next()) {

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
		}

		return am;
	}

	public boolean setDeposit(DepositModel model) throws Exception {
		try {
			JDBC_Connect connect = new JDBC_Connect();
			conn = connect.getConnection();

			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			Date date = new Date();
			String current_time = dateFormat.format(date);

			PreparedStatement ps1 = conn.prepareStatement("insert into deposit(value, account_number, deposit_type," +
					"deposit_term, deposit_rate, deposit_currency, deposit_amount, deposit_date)" +
					"values('" + model.getValue() + "','" + model.getAccount_number() + "','" + model.getDeposit_type() + "','"
					+ model.getDeposit_term() + "','" + model.getDeposit_rate() + "','" + model.getDeposit_currency() + "','"
					+ model.getDeposit_amount() + "','" + current_time + "')");
			count1 = ps1.executeUpdate();
			System.out.println("Inserted " + count1 + " row");

			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return ((count1 > 0));
	}

	public ArrayList<DepositModel> getDepositList(Connection conn) throws Exception {
		ArrayList<DepositModel> depositList = new ArrayList<>();
		DepositModel dpModel;

		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from deposit");
		while (rs.next()) {
			dpModel = new DepositModel();
			dpModel.setAccount_number(rs.getInt(1));
			dpModel.setValue(rs.getString(2));
			dpModel.setDeposit_type(rs.getString(3));
			dpModel.setDeposit_term(rs.getString(4));
			dpModel.setDeposit_rate(rs.getString(5));
			dpModel.setDeposit_currency(rs.getString(6));
			dpModel.setDeposit_amount(rs.getInt(7));

			depositList.add(dpModel);

		}

		return depositList;

	}

	public ArrayList<AccountModel> getAccountList(Connection conn) throws Exception {
		ArrayList<AccountModel> accList = new ArrayList<>();
		AccountModel accModel;

		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from account");
		while (rs.next()) {
			accModel = new AccountModel();
			accModel.setAccount_number(rs.getInt(1));
			accModel.setSurname(rs.getString(2));
			accModel.setName(rs.getString(3));
			accModel.setPatronymic(rs.getString(4));
			accModel.setBirth(rs.getString(5));
			accModel.setSeries(rs.getString(6));
			accModel.setNumber(rs.getString(7));
			accModel.setDate(rs.getString(8));
			accModel.setIdentification(rs.getString(9));
			accModel.setAuthority(rs.getString(10));
			accModel.setBirthplace(rs.getString(11));
			accModel.setCity(rs.getString(12));
			accModel.setAddress(rs.getString(13));
			accModel.setHome(rs.getString(14));
			accModel.setMobile(rs.getString(15));
			accModel.setEmail(rs.getString(16));
			accModel.setWorkplace(rs.getString(17));
			accModel.setPosition(rs.getString(18));
			accModel.setMarital(rs.getString(19));
			accModel.setCitizenship(rs.getString(20));
			accModel.setDisability(rs.getString(21));
			accModel.setPensioner(rs.getString(22));
			accModel.setMilitary(rs.getString(23));
			accModel.setIncome(rs.getString(24));
			accModel.setUsername(rs.getString(25));
			accModel.setPassword(rs.getString(26));

			accList.add(accModel);

		}

		return accList;

	}
}

