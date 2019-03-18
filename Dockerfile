FROM python:3-alpine
RUN mkdir -p /opt && \
    pip install aiosmtpd 

WORKDIR /opt
COPY *.py /opt/
COPY *.sh /opt/

RUN wget -O mailhog https://github.com/mailhog/MailHog/releases/download/v1.0.0/MailHog_linux_amd64 && \
    chmod +x mailhog

EXPOSE 25
EXPOSE 80

ENTRYPOINT ["/opt/entrypoint.sh"]
