FROM      alekitto/traefik-alpine

COPY      traefik_ecs.yaml /etc/traefik/traefik.yaml
RUN touch /etc/traefik/acme.json
RUN chmod +x /etc/traefik/acme.json
