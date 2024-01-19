FROM python:3.8.18-slim-bookworm

WORKDIR /DeepCAD

COPY . .

# RUN apt-get update && apt-get install -y \
#     bash \
#     && rm -rf /var/lib/apt/lists/*

CMD ["echo", "hello world!"]

