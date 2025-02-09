DC := docker compose

.PHONY: up down restart logs ps build

up:
	$(DC) build
	$(DC) up -d

down:
	$(DC) down

restart:
	$(DC) down && $(DC) up -d

logs:
	$(DC) logs -f

ps:
	$(DC) ps

status:
	$(DC) ps

build:
	$(DC) build
