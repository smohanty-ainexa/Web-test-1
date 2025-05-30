#!/bin/bash

set -e

cd "$(dirname "$0")"

echo "🔁 Stopping old container (if exists)"
docker stop ainexa-container || true
docker rm ainexa-container || true

echo "🐳 Building Docker image"
docker build -t ainexa-image .

echo "🚀 Running new container on port 80"
docker run -d --name ainexa-container -p 8000:80 --restart always ainexa-image

echo "✅ Deployment complete. Access your website at http://<EC2-IP>:<HOST_PORT>"

