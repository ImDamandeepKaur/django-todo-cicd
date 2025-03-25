FROM python:3.12

WORKDIR /app

COPY . /app/

RUN pip install django==5.1.7


EXPOSE 8000

CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
