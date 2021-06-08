CREATE TABLE deposit
(account_number INT NOT NULL,
 value VARCHAR(30) NOT NULL,
 deposit_type VARCHAR(25) NOT NULL,
 deposit_term VARCHAR(25) NOT NULL,
 deposit_rate VARCHAR(10) NOT NULL,
 deposit_currency VARCHAR(10) NOT NULL,
 deposit_amount FLOAT(3) NOT NULL,
 deposit_date VARCHAR(25) NOT NULL,
 FOREIGN KEY (account_number)  REFERENCES account (account_number)
);