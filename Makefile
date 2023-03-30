run:
	docker-compose run --rm api mix phx.server

shell:
	docker-compose run --rm --service-ports api iex

setup-db:
	docker-compose run --rm api bash -c "mix ecto.setup"

update-mix:
	docker-compose run --rm api mix deps.get

check-dialyzer:
	docker-compose run --rm api mix dialyzer

lint:
	docker-compose run --rm api mix format --check-formatted

fix-lint:
	docker-compose run --rm api mix format
