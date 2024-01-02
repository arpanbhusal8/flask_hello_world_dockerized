FROM python:3.6
COPY . /app
COPY ./requirements.txt /app
WORKDIR /app
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["python","app.py"]
