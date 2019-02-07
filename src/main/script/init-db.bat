set MYSQL_HOME=C:\Program Files\MariaDB 10.3
REM mariaDB est une version completement open source de mysql
REM         plus facile a installer et qui reagit pareil .
REM ou bien set MYSQL_HOME=C:\Program Files\MySQL\MySQL Workbench 8.0 C

cd /d "%~dp0"
REM cd /d "%~dp0" permet de se placer dans le répertoire courant

"%MYSQL_HOME%\bin\mysql" -u root -p < init-database.sql
pause

REM open with / text editor to edit in eclipse
REM open with / system editor to launch from eclipse
