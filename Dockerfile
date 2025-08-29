FROM  ubuntu:latest

WORKDIR /app

COPY requirements.txt ./

RUN apt-get update && apt-get install -y python3 python3-pip \
    && pip install --no-cache-dir --break-system-packages -r requirements.txt

COPY . ./

EXPOSE 8004

CMD python3 manage.py runserver 0.0.0.0:8004
