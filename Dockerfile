FROM python:3.10-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt || pip install --no-cache-dir .

EXPOSE 8000

ENTRYPOINT ["python3", "-m", "http.server", "8000"]

