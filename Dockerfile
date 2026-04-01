FROM python:3.10-slim

# System dependencies
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Make start script executable
RUN chmod +x start.sh

# Run bot
CMD ["bash", "start.sh"]
