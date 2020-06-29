FROM python:3.6
ENV PYTHONUNBUFFERED 1

RUN apt update && apt install nginx -y && unlink /etc/nginx/sites-enabled/default && mkdir /www && chown www-data:www-data /www
COPY ./app.conf /etc/nginx/sites-enabled/

RUN mkdir /app
WORKDIR /app

COPY ./requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/

EXPOSE 8000

CMD ["/app/entrypoint.sh"]
