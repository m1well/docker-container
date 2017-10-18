# mysql container

### docker run

docker run -p 3306:3306 --name mysql_db \
-v ~/project_folder/mysql_data:/var/lib/mysql \
-v ~/project_folder/startup_scripts:/docker-entrypoint-initdb.d \
-e MYSQL_ROOT_PASSWORD=root \
-d mysql:latest

### docker exec

unix bash: `docker exec -it mysql-server /bin/bash`<br>
windows git bash: `winpty docker exec -it mysql-server bash`<br>
execute mysql cli: `mysql --user=root --password=root`<br>
choose database: `USE mysql_db;`<br>
execute commands: `SELECT * FROM person;`<br>
