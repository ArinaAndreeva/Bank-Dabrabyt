CREATE TABLE account
(account_number INT NOT NULL,
 surname  VARCHAR(30) NOT NULL,
 name  VARCHAR(30) NOT NULL,
 patronymic VARCHAR(30) NOT NULL,
 birth  DATE NOT NULL,
 series VARCHAR(30) NOT NULL,
 number  VARCHAR(30) NOT NULL,
 date DATE NOT NULL,
 identification  VARCHAR(30) NOT NULL,
 authority VARCHAR(100) NOT NULL,
 birthplace  VARCHAR(50) NOT NULL,
 city  VARCHAR(30) NOT NULL,
 address  VARCHAR(100) NOT NULL,
 home  VARCHAR(30),
 mobile  VARCHAR(30),
 email  VARCHAR(30),
 workplace  VARCHAR(50),
 position  VARCHAR(50),
 marital  VARCHAR(200) NOT NULL,
 citizenship  VARCHAR(100) NOT NULL,
 disability  VARCHAR(100) NOT NULL,
 pensioner  VARCHAR(10) NOT NULL,
 military  VARCHAR(10) NOT NULL,
 income  VARCHAR(25),
 username  VARCHAR(50) NOT NULL,
 password  VARCHAR(50) NOT NULL,
 PRIMARY KEY (account_number)
);