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


CREATE TABLE telecom (
    customerID VARCHAR(20),
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(25),
    InternetService VARCHAR(25),
    OnlineSecurity VARCHAR(25),
    OnlineBackup VARCHAR(25),
    DeviceProtection VARCHAR(25),
    TechSupport VARCHAR(25),
    StreamingTV VARCHAR(25),
    StreamingMovies VARCHAR(25),
    Contract VARCHAR(25),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(10),
    PRIMARY KEY (customerID)
);
/*
MySQL doesnt allow loading data from outside C:/ProgramData/MySQL/MySQL Server/Uploads folder
which is inaccessible to me.

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/telecom_churn.csv'
INTO TABLE telecom_churn
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

So I inserted 1st 5 rows from csv to this table via INSERT INTO VALUES command
*/

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE telecomm
ADD date_of_registration2 DATE
AFTER date_of_registration;

ALTER TABLE telecomm MODIFY COLUMN data_used FLOAT;

-- DECIMAL(5,2) -> total no. of digits (always must be 5) = 5, decimal places = 2 
-- FLOAT -> decimal data no need specify anything
-- DOUBLE -> bigger version Float 
/*
 binary column BOOL 
 MySQL recognises it as TINYINT(1)
 TINYINT(1) range = -127 to 127 
 false = 0
 true != 0 (can be negative) -> (-127 to -1) + (1 to 127) 
*/
SELECT * FROM telecomm;
DESC telecomm;