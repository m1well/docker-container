FROM mysql:latest

# maintainer
LABEL maintainer="Michael Wellner <michaelwellner@gmx.de>"
LABEL creation-date="23.10.2017"

# arg for root password
ARG ROOTPW=root

# copy startup scripts
COPY /startup_scripts /docker-entrypoint-initdb.d

# set mysql root password
ENV MYSQL_ROOT_PASSWORD=$ROOTPW

# add curl for healtchcheck (and redirect echo to a dummy file)
RUN apt-get update -y >> tmp/apt-get-echo.txt && \
  apt-get install -y curl >> tmp/apt-get-echo.txt

# healthcheck
HEALTHCHECK --interval=30s --timeout=10s --retries=5 \
  CMD curl --fail http://localhost:3306/ || exit 1
