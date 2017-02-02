FROM logstash:5

ARG SPLUNK_HOST

RUN mkdir -p /etc/logstash/certs; \
    chmod 0755 /etc/logstash/certs; \
    cd /etc/logstash/certs; \
    openssl s_client -showcerts -connect $SPLUNK_HOST:8088 < /dev/null | openssl x509 > splunk.pem; \
    keytool -import -noprompt -alias splunk -file splunk.pem -keystore trust.jks -storepass logstash

COPY ./conf.d /etc/logstash/conf.d

EXPOSE 9600