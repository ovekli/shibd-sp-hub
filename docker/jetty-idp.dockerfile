FROM jetty:jdk17

ENV JAVA_OPTIONS=-Didp.home="/opt/shibboleth-idp"

COPY shibboleth.ini $JETTY_BASE/start.d/
COPY java-idp-jetty-base/src/main/resources/net/shibboleth/idp/module/jetty/jetty-base/modules $JETTY_BASE/modules/
COPY java-idp-jetty-base/src/main/resources/net/shibboleth/idp/module/jetty/jetty-base/etc $JETTY_BASE/etc/
COPY java-idp-jetty-base/src/main/resources/net/shibboleth/idp/module/jetty/jetty-base/webapps/idp.xml $JETTY_BASE/webapps/

USER root
RUN apt-get update -y && \
apt-get install vim -y && \
chmod 664 /etc/passwd && \
chmod 777 /var/lib/jetty
USER jetty
