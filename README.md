# TL;DR
* ses-smtp-webui-relay-proxy
* SMTP relay and WebUI for debugging

# Why this is needed.
* Internal e-mail sending is hard to debug.
* so, need to view via webUI & debugging.
* need relay internal SMTP server(no auth) to aws ses.


# How to Run

* copy config.ini.template and edit.


```
docker build -t ziozzang/ses-relay
docker run -it -v `pwd`/config.ini:/opt/config.ini --rm -p 80:8025 -p 25:25  ziozzang/ses-relay

```
