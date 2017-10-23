FROM tomcat:8

# labels
LABEL maintainer="Michael Wellner <michaelwellner@gmx.de>" \
      creation-date="23.10.2017"

# copy healthcheck script and webapp (change to your webapp)
COPY /healthcheck_script/healthcheck.sh /usr/sbin/healthcheck.sh
COPY /webapps/sample-webapp.war /usr/local/tomcat/webapps/sample-webapp.war

# healthcheck runner
HEALTHCHECK --interval=30s --timeout=10s --retries=5 \
  CMD [ "/usr/sbin/healthcheck.sh" ]
