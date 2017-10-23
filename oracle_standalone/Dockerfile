FROM wnameless/oracle-xe-11g:latest

# labels
LABEL maintainer="Michael Wellner <michaelwellner@gmx.de>" \
      creation-date="23.10.2017"

# copy healthcheck script and startup scripts
COPY /healthcheck_script/healthcheck.sh /usr/sbin/healthcheck.sh
COPY /startup_scripts /docker-entrypoint-initdb.d

# set environment variables
ENV ORACLE_ALLOW_REMOTE=true

# healthcheck runner
HEALTHCHECK --interval=30s --timeout=10s --retries=5 \
  CMD [ "/usr/sbin/healthcheck.sh" ]
