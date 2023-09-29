FROM python:3.6-alpine
LABEL maintainer="DJIBRIL BOLY"
#RUN apt update -y && apt install python-dev python3-dev libsasl2-dev python-dev libldap2-dev libssl-dev -y
RUN pip install flask==1.1.2
#WORKDIR /opt
COPY . /
EXPOSE 8080
ENV ODOO_URL="https://hub.docker.com/r/dpage/pgadmin4/"
ENV PGADMIN_URL="https://hub.docker.com/r/dpage/pgadmin4/"
CMD [ "python", "app.py" ]