FROM python:3.9-slim

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Create directory structure
RUN mkdir -p templates

# Copy application files
COPY app.py .
COPY templates/clock.html templates/

EXPOSE 5000

# Run using gunicorn for production
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
