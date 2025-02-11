REM cd /d "C:"
cd C:\Program Files\MySQL\MySQL Server 8.0\bin\
mysql -u root -p***** -h localhost -D DentalClinic -e "source C:/Program Files/MySQL/MySQL Server 8.0/bin/scripts/load_data.sql;"
REM -e "SELECT * FROM daily_transactions;"
pause