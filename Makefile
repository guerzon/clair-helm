
lint:
	ct lint --config charts/ct.yaml

test:
	ct install --config charts/ct.yaml

.PHONY: lint test