FROM python:3.10-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt || pip install --no-cache-dir .
EXPOSE 8000
CMD ["python3", "-m", "http.server", "8000"]
