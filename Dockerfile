FROM python:3.13.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    ffmpeg \
    build-essential \
    libffi-dev \
    libssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /app
COPY . /app

# Python deps
RUN pip3 install --no-cache-dir -r requirements.txt

# Agar start.sh hai:
CMD ["bash", "start.sh"]