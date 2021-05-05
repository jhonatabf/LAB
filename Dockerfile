FROM store/intersystems/iris-community:2020.1.0.209.0

USER root

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

WORKDIR /opt/irisshift
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisshift
USER ${ISC_PACKAGE_MGRUSER}

COPY  Installer.cls .
COPY  src src
COPY iris-build.script /tmp/iris-build.script
COPY iris-startup.script /tmp/iris-startup.script
COPY iris-merge.cpf /tmp/iris-merge.cpf

RUN iris start IRIS \
	&& iris session IRIS < /tmp/iris-build.script \
    && iris stop IRIS quietly

#CMD ["-a","iris session IRIS < /tmp/iris-startup.script"]