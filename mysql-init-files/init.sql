ALTER USER 'root'@'%' IDENTIFIED WITH 'mysql_native_password' BY 'Passw0rd!';
ALTER USER 'studyid'@'%' IDENTIFIED WITH 'mysql_native_password' BY 'Passw0rd!';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'studyid'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
