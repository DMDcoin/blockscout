#!/bin/sh
# this file is designed to get executed in the root of blockscout 
# within the docker container.

echo "Creating DB...."
mix ecto.create
echo "DB created!"
echo "Creating Tables...."
mix ecto.migrate
echo "Tables created!"

echo "Starting Server...."
mix phx.server