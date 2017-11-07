# oracle container

This is a standalone container with an oracle database.<br/>

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

ATTENTION!<br/>
To get auto incremented IDs in the table, you have to run the "create trigger script" again manually!!<br/>
> I think oracle startup can't execute plsql statements?

### docker run

> You can also run the container with the docker run command (from everywhere).<br/>
> Attention: Change "project_folder" to your folder<br/>

`docker run --name oracle_db -p 49160:22 -p 49161:1521 -p 49162:8080 \`<br/>
`-v ~/project_folder/startup_scripts:/docker-entrypoint-initdb.d \`<br/>
`-e ORACLE_ALLOW_REMOTE=true --restart=always \`<br/>
`-d wnameless/oracle-xe-11g`<br/>

### docker exec

> To jump into the container use following commands:<br/>

unix bash: `docker exec -it oracle_db /bin/bash`<br/>
windows git bash: `winpty docker exec -it oracle_db bash`<br/>
execute mysql cli: `sqlplus system/oracle@127.0.0.1:1521/XE;`<br/>
execute commands: `SELECT username FROM dba_users;`<br/>
