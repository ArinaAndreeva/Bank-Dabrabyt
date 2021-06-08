package kursach.dabrabyt.bank.model;

public class DepositModel {
	String deposit_type, deposit_term, deposit_rate, deposit_currency, value, username, password, re_password;
	int account_number, deposit_amount;

	public int getAccount_number() { return account_number; }
	public void setAccount_number(int account_number) { this.account_number = account_number; }

	public String getDeposit_type() {
		return deposit_type;
	}

	public void setDeposit_type(String deposit_type) { this.deposit_type = deposit_type; }

	public String getDeposit_term() { return deposit_term; }

	public void setDeposit_term(String deposit_term) { this.deposit_term = deposit_term; }

	public String getDeposit_rate() {
		return deposit_rate;
	}

	public void setDeposit_rate(String deposit_rate) { this.deposit_rate = deposit_rate; }

	public String getDeposit_currency() {
		return deposit_currency;
	}

	public void setDeposit_currency(String deposit_currency) { this.deposit_currency = deposit_currency; }

    public int getDeposit_amount() {return deposit_amount; }

	public void setDeposit_amount(int deposit_amount) { this.deposit_amount = deposit_amount; }

	public String getValue() { return value; }

	public void setValue(String value) { this.value = value; }

	public String getUsername() { return username; }

	public void setUsername(String value) { this.username = username; }

	public String getPassword() { return password; }

	public void setPassword(String password) { this.password = password; }

}
