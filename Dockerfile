FROM python:3.13.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

# Sirf requirements pehle copy karo (better caching)
COPY requirements.txt .

# Install deps
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Baaki project copy karo
COPY . .

RUN chmod +x start.sh || true

CMD ["bash", "start.sh"]
