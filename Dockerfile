FROM --platform=linux/amd64 ubuntu:latest

RUN apt update && apt install -y wget unzip

RUN mkdir -p /code
WORKDIR /code

RUN wget https://github.com/duckdb/duckdb/releases/download/v0.7.1/duckdb_cli-linux-amd64.zip
RUN unzip duckdb_cli-linux-amd64.zip

COPY unload.sql /code/