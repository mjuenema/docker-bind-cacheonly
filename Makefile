

all: help


help:
	@echo "make build    - Build Docker image"


build:
	@docker build --tag=mjuenemann/bind-cacheonly .
