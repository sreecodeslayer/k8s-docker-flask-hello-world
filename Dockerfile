FROM python:3.7
MAINTAINER Sreenadh TC "kesav.tc8@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn"]
CMD ["-b 0.0.0.0:8000","--log-level=debug","app:app"]