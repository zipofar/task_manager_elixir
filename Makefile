run:
	docker-compose run --rm api mix phx.server

shell:
	docker-compose run --rm --service-ports api iex

setup-db:
	docker-compose run --rm api bash -c "mix ecto.setup"
