#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t landsat-scroll-nginx .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run app
docker run --name landsat-scroll-nginx -d -p 8080:80 landsat-scroll-nginx