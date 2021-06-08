.Phony: run-caddy

run-caddy:
	caddy run -watch -config caddy.json
