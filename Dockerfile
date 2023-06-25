FROM python:latest
LABEL key="swamy877@gmail.com"
WORKDIR /home/python
COPY requirements.txt /home/python/
RUN pip3 install -r requirements.txt
ADD ./tresvite /home/python/
COPY ./manage.py /home/python
RUN chmod +x manage.py
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]