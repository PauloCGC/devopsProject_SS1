FROM python:3.12-rc-buster

WORKDIR /app

COPY . /app

RUN python -m pip --no-cache-dir install -r requirements.txt

EXPOSE 3000
EXPOSE 3306

CMD ["python","src/app.py"]