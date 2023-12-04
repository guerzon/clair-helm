
lint:
	ct lint --config charts/ct.yaml

test:
	ct install --config charts/ct.yaml

docs:
	bash ./chart-docs.sh

.PHONY: lint test docs
