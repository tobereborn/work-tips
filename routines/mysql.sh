# dump all table definition
mysqldump -hhost -Pport -uroot -pdbpasswd -d dbname >db.sql;

# dump test table definition
mysqldump -hhost -Pport -uroot -pdbpasswd -d dbname test>db.sql;

# dump all table definition and data without option -d
mysqldump  -hhost -Pport -uroot -pdbpasswd  dbname >db.sql;

# dump test table definition and data without option -d
# to export emoji
mysqldump  -hhost -Pport -uroot -pdbpasswd --default-character-set=utf8mb4  dbname test>db.sql;

修改数据库字符集：
ALTER DATABASE db_name DEFAULT CHARACTER SET character_name [COLLATE ...];

把表默认的字符集和所有字符列（CHAR,VARCHAR,TEXT）改为新的字符集：
ALTER TABLE tbl_name CONVERT TO CHARACTER SET character_name [COLLATE ...]
如：ALTER TABLE logtest CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;

只是修改表的默认字符集：
ALTER TABLE tbl_name DEFAULT CHARACTER SET character_name [COLLATE...];
如：ALTER TABLE logtest DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

修改字段的字符集：
ALTER TABLE tbl_name CHANGE c_name c_name CHARACTER SET character_name [COLLATE ...];
如：ALTER TABLE logtest CHANGE title title VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci;

查看数据库编码：
SHOW CREATE DATABASE db_name;

查看表编码：
SHOW CREATE TABLE tbl_name;

查看字段编码：
SHOW FULL COLUMNS FROM tbl_name;

