FROM python:alpine
COPY . /code
WORKDIR /code
ENV FLASK_APP run.py
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["run.py"]

