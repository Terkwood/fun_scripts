#!/bin/bash

# Remove all dependent child images
# Helpful if you are seeing that you can't
# remove a specific image because of dependent children

# This can be used instead of mass-nuking ALL images, containers, volumes
# and allow you to rebuild a specific image

docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
