FROM python:3.10-slim

WORKDIR /app

# Install git and dependencies
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt || pip install --no-cache-dir .

CMD ["python3"]

