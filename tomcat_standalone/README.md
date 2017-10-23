# tomcat container

This is a standalone container with a tomcat server.<br/>

### docker compose up

> You can run the container by using docker compose functionality<br/>
> Here you need the docker-compose.yml file<br/>

1. Checkout this repository
2. navigate to this folder "mysql"
2. run command `docker-compose up`

### docker run

> You can also run the container with the docker run command (from everywhere).<br/>
> Attention: Change "project_folder" to your folder<br/>

`docker run --name tomcat_server -p 8080:8080 -p 8009:8009 \`<br/>
`-v ~/project_folder/webapps/sample-webapp.war:/usr/local/tomcat/webapps/sample-webapp.war \`<br/>
`--restart=always \`<br/>
`-d tomcat:8`<br/>

### docker exec

> To jump into the container use following commands:<br/>

unix bash: `docker exec -it tomcat_server /bin/bash`<br/>
windows git bash: `winpty docker exec -it tomcat_server bash`<br/>
