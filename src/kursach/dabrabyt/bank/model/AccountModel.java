package kursach.dabrabyt.bank.model;

public class AccountModel {
	String surname, name, patronymic, birth, series, number, date, identification, authority, birthplace, city, address,
			home, mobile, email, workplace, position, marital, citizenship, disability, pensioner, military, income, username, password;

	int account_number, deposit_amount;

	public int getAccount_number() {
		return account_number;
	}
	public void setAccount_number(int account_number) { this.account_number = account_number; }

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) { this.surname = surname; }

	public String getName() { return name; }

	public void setName(String name) { this.name = name; }

	public String getPatronymic() { return patronymic; }

	public void setPatronymic(String patronymic) { this.patronymic = patronymic; }

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) { this.birth = birth; }

	public String getSeries() {
		return series;
	}

	public void setSeries(String series) { this.series = series; }

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) { this.number = number; }

	public String getDate() {
		return date;
	}

	public void setDate(String date) { this.date = date; }

	public String getIdentification() {
		return identification;
	}

	public void setIdentification(String identification) { this.identification = identification; }

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) { this.authority = authority; }

	public String getBirthplace() {
		return birthplace;
	}
	
	public void setBirthplace(String birthplace) { this.birthplace = birthplace; }

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) { this.address = address; }

	public String getHome() {
		return home;
	}

	public void setHome(String home) { this.home = home; }

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) { this.mobile = mobile; }

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWorkplace() { return workplace; }

	public void setWorkplace(String workplace) {this.workplace = workplace; }

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) { this.position = position; }

	public String getMarital() { return marital; }

	public void setMarital(String marital) { this.marital = marital; }

	public String getCitizenship() { return citizenship; }

	public void setCitizenship(String citizenship) { this.citizenship = citizenship; }

	public String getDisability() {
		return disability;
	}

	public void setDisability(String disability) { this.disability = disability; }

	public String getPensioner() {
		return pensioner;
	}

	public void setPensioner(String pensioner) { this.pensioner = pensioner; }

	public String getMilitary() {
		return military;
	}

	public void setMilitary(String military) { this.military = military; }

	public String getIncome() {
		return income;
	}

	public void setIncome(String income) { this.income = income; }

	public String getUsername() { return username; }

	public void setUsername(String username) { this.username = username; }

	public String getPassword() { return password; }

	public void setPassword(String password) { this.password = password; }

	public void setDeposit_amount(int deposit_amount) { this.deposit_amount = deposit_amount; }

}
