run:
	docker-compose run --rm api mix phx.server

shell:
	docker-compose run --rm --service-ports api iex
