# mysql container

### docker compose up

> You can run the container by using docker compose functionality<br/>
> Here you need the docker-compose.yml file<br/>

1. Checkout this repository
2. navigate to this folder "mysql"
2. run command `docker-compose up`

### docker run

> You can also run the container with the docker run command (from everywhere).<br/>
> Attention: Change "project_folder" to your folder<br/>

`docker run -p 3306:3306 --name mysql_db \`<br/>
`-v ~/project_folder/mysql_data:/var/lib/mysql \`<br/>
`-v ~/project_folder/startup_scripts:/docker-entrypoint-initdb.d \`<br/>
`-e MYSQL_ROOT_PASSWORD=root --restart=always \`<br/>
`-d mysql:latest`<br/>

### docker exec

> To jump into the container use following commands:<br/>

unix bash: `docker exec -it mysql_db /bin/bash`<br/>
windows git bash: `winpty docker exec -it mysql_db bash`<br/>
execute mysql cli: `mysql --user=root --password=root;`<br/>
choose database: `USE mydatabase;`<br/>
execute commands: `SHOW TABLES;`<br/>
