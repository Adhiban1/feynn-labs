FROM python:3.10

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY models/ ./models/
COPY templates/ ./templates/
COPY uploaded/ ./uploaded/
COPY modules/ ./modules/
COPY app.py .

CMD ["python3", "app.py"]
expose 5000