FROM python:3-alpine3.11
EXPOSE 8000
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

COPY requirements.txt requirements.txt
COPY flaskapp /opt/

RUN pip3 install -r requirements.txt
WORKDIR /opt/

RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /opt/
USER appuser

CMD python ./app.py