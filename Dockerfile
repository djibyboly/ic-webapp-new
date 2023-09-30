FROM python:3.6-alpine
LABEL maintainer="DJIBRIL BOLY"
RUN pip install flask==1.1.2
WORKDIR /opt
COPY . /opt
EXPOSE 8080
ENV ODOO_URL="https://hub.docker.com/r/dpage/pgadmin4/"
ENV PGADMIN_URL="https://hub.docker.com/r/dpage/pgadmin4/"
CMD [ "python", "app.py" ]