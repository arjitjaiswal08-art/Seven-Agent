# Seven Agent - Dockerfile
FROM python:3.11-slim

WORKDIR /app

# Install Node.js
RUN apt-get update && apt-get install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Copy and install Python dependencies
COPY namma_agent/requirements.txt /app/namma_agent/requirements.txt
RUN pip install --no-cache-dir -r namma_agent/requirements.txt

# Copy application
COPY . /app/

# Build web UI
WORKDIR /app/namma_agent/webui
RUN npm ci && npm run build

# Back to app directory
WORKDIR /app

# Create data directory
RUN mkdir -p /app/data

# Expose port
EXPOSE 8000

# Environment
ENV PYTHONUNBUFFERED=1
ENV HOST=0.0.0.0
ENV PORT=8000

# Start command
CMD ["python", "-m", "namma_agent", "--server"]
