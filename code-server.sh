#!/bin/sh

# Download
curl -fsSL https://code-server.dev/install.sh | sh

# Run server
code-server --auth none --port 8080
