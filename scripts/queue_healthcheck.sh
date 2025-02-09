#!/bin/bash

if [ "$QUEUE_ENGINE" == "redis" ]; then
    redis-cli ping
elif [ "$QUEUE_ENGINE" == "rabbitmq" ]; then
    rabbitmqctl status
else
    echo "Unsupported queue engine: '$QUEUE_ENGINE'"
    exit 1
fi