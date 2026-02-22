FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD ["openclaw", "gateway", "--host", "0.0.0.0", "--port", "8080", "--allow-unconfigured"]
