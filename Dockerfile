FROM python:3.8-slim-buster

# System update & install git
RUN apt update && apt upgrade -y
RUN apt install git -y

# Copy requirements and install
COPY requirements.txt /requirements.txt
RUN pip3 install --upgrade pip && pip3 install -r /requirements.txt

# Copy bot files
WORKDIR /Ultra-Forward-Bot
COPY . /Ultra-Forward-Bot
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose a dummy port for Replit
EXPOSE 8080

# Start the bot + dummy HTTP server
CMD ["/bin/bash", "/start.sh"]
