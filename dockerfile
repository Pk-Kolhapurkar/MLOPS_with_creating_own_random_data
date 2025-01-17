FROM python:3.10

WORKDIR /app

COPY app.py .  # Your application code
COPY models/ ./models/  # Your models folder

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Use PORT environment variable for dynamic port binding
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]
