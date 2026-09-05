FROM python:3.12-slim
RUN pip install --no-cache-dir itagger
WORKDIR /manga
ENTRYPOINT ["sleep", "infinity"]
