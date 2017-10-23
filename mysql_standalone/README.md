# mysql container

This is a standalone container with a mysql database.<br/>

### docker compose up

> Best pactice!<br/>
> You can run the container by using docker compose functionality<br/>
> Here you need the docker-compose.yml file<br/>
> This generates a new container image with executed startup scripts<br/>
> You can now push this image where ever you want<br/>
< I also added a healthcheck script but removed it from the dockerfile because of macOS problems<br/>

1. Checkout this repository
2. navigate to this folder "mysql"
2. run command `bash build.sh`

### docker run

> You can also run the origin container with the docker run command (from everywhere)<br/>
> Attention: Change "project_folder" to your folder<br/>

`docker run --name mysql_db -p 3306:3306 \`<br/>
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
