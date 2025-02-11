create table daily_transactions(
	transaction_id int auto_increment primary key,
    transaction_date date not null,
    patient_id int not null,
    patient_name varchar (225) not null,
    service_rendered varchar(225) not null,
    amount decimal(10,2) not null,
    payment_method ENUM('Cash','Credit Card', 'Insurance', 'Other') not null,
    insurance_provider varchar(225) default null,
    status enum('Paid','Pending','Refunded') default 'Paid',
    notes text,
    created_at timestamp default current_timestamp
);



insert into daily_transactions (transaction_date, patient_id, patient_name, service_rendered, amount, payment_method, insurance_provider, status, notes) 
    values('2024-01-30', 101, 'Hannah Montana','Teeth Cleaning', 150.00, 'Credit Card', NULL, 'Paid', 'Recommended fluoride treatment');
    
 select * from daily_transactions;   
 
load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\daily_trans.csv'
into table daily_transactions
fields terminated by ','
lines terminated by '\n'
ignore 1 rows
(transaction_date, patient_id, patient_name, service_rendered, amount, payment_method, insurance_provider, status, notes);

show variables like 'secure_file_priv';

update daily_transactions
set patient_id = 102 where patient_name = "John Doe";

delete from daily_transactions where transaction_id > 3;

select * from daily_transactions;