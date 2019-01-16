#!/bin/sh

set -x
echo "logging in to registry"
echo -n "$password" | docker login -u "$username" --password-stdin "$registry"

echo "pushing image"
docker image push "$imageName"
