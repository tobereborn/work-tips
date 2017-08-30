# dump all table definition
mysqldump -hhost -Pport -uroot -pdbpasswd -d dbname >db.sql;

# dump test table definition
mysqldump -hhost -Pport -uroot -pdbpasswd -d dbname test>db.sql;

# dump all table definition and data without option -d
mysqldump  -hhost -Pport -uroot -pdbpasswd  dbname >db.sql;

# dump test table definition and data without option -d
mysqldump  -hhost -Pport -uroot -pdbpasswd dbname test>db.sql;
