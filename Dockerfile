# Dockerfile

# 1) Start from the official n8n Docker image
FROM n8nio/n8n:latest

# 2) Switch to root so we can install packages
USER root

# 3) Install FFmpeg
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean

# 4) Switch back to the 'node' user
USER node

# The default command in n8n's base image is "n8n start"
# So no extra CMD or ENTRYPOINT is needed.
