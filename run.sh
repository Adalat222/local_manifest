#!/bin/bash

# Print "hello user" every 3 seconds for 90 minutes
for i in {1..1800}
do
    echo "hello user"
    sleep 3
done

# Compress the "out" folder to "evo.tar.gz"
tar -zczf evo.tar.gz ~/.ccache

