# Use the official n8n image (already includes everything)
FROM n8nio/n8n:latest

# Environment variables (you can also set them in Render dashboard)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=StrongPass123
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV DB_TYPE=sqlite
ENV DB_SQLITE_DATABASE=/data/database.sqlite
ENV N8N_USER_FOLDER=/data

# ✅ Don't create /data here — Render mounts it automatically
VOLUME ["/tmp"]

EXPOSE 5678
CMD ["n8n", "start"]
