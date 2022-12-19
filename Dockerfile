FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/

RUN make install

EXPOSE 80

CMD ["python", "app.py"]


