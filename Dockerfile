FROM python:latest
RUN pip install Django==3.2
COPY . . 
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8001"]
