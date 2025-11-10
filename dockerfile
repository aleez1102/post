FROM n8nio/n8n:latest

# Create data directory for persistent storage
RUN mkdir -p /data
VOLUME ["/data"]

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=0334bc50bf64d689e37cd337722b3c6e

EXPOSE 5678
CMD ["n8n", "start"]
