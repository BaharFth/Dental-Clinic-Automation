select count(*) from daily_transactions;

select 'going to load!';

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\daily_trans.csv'
into table daily_transactions
fields terminated by ','
lines terminated by '\n'
ignore 1 rows
(transaction_date, patient_id, patient_name, service_rendered, amount, payment_method, insurance_provider, status, notes);

select count(*) from daily_transactions;
