FROM python:3.12-slim

# Dépendances système nécessaires pour compiler lxml si besoin
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libxml2-dev \
    libxslt-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir itagger

WORKDIR /manga
ENTRYPOINT ["sleep", "infinity"]
