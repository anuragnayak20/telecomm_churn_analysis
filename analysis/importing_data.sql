CREATE DATABASE telecomm_dataset;

USE telecomm_dataset;

/*
customer_id: Unique identifier for each customer.
telecom_partner: The telecom partner associated with the customer.
gender: The gender of the customer.
age: The age of the customer.
state: The Indian state in which the customer is located.
city: The city in which the customer is located.
pincode: The pincode of the customer's location.
date_of_registration: The date on which the customer registered with the telecom partner.
num_dependents: The number of dependents (e.g. children) the customer has.
estimated_salary: The customer's estimated salary.
calls_made: The number of calls made by the customer.
sms_sent: The number of SMS messages sent by the customer.
data_used: The amount of data used by the customer.
churn: Binary variable indicating whether the customer has churned or not (1 = churned, 0 = not churned).
*/


CREATE TABLE telecomm (
customer_id BIGINT NOT NULL UNIQUE,
telecom_partner VARCHAR(50),
gender CHAR(1),
age INT,
state VARCHAR(50),
city VARCHAR(50),
pincode CHAR(6),
date_of_registration VARCHAR(50),
num_dependents INT,
estimated_salary DOUBLE,
calls_made INT,
sms_sent INT,
data_used BIGINT,
churn BOOL,
PRIMARY KEY (customer_id)
);

/*
LOAD DATA LOCAL INFILE '"E:/DataAnalystCareer/GitRepoForDA/telecomm_churn_analysis/data/telecom_churn.csv"'
INTO TABLE telecom
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
*/
INSERT INTO telecomm VALUES
(1,'Reliance Jio','F',25,'Karnataka','Kolkata','755597','01-01-2020',4,124962,44,45,-361,0);

SELECT * FROM telecomm;
INSERT INTO telecomm VALUES
(2,	'Reliance Jio','F', 55, 'Mizoram', 'Mumbai', '125926', '01-01-2020',2,	130556,62, 39, 5973,0);
INSERT INTO telecomm VALUES
(3,	'Vodafone',	'F', 57, 'Arunachal Pradesh', 'Delhi', '423976','01-01-2020', 0, 148828, 49, 24, 193,1);
INSERT INTO telecomm VALUES
(4,	'BSNL',	'M', 46, 'Tamil Nadu', 'Kolkata', '522841', '01-01-2020', 1,138722, 80, 25, 9377,	1);
INSERT INTO telecomm VALUES
(5,	'BSNL',	'F', 26, 'Tripura', 'Delhi', '740247', '01-01-2020', 2, 55098, 78, 15, 1393, 0);

SELECT * FROM telecomm;



