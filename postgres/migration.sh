#!/bin/bash

HOST={your target db host}
DATABASE={your target db database name}
USERNAME={your target db username}
PASSWORD={your target db password}

echo "start dump wait..."

PGPASSWORD=$PASSWORD \
    pg_dump \
    --host=$HOST \
    -U $USERNAME \
    -x -O -f dump.sql $DATABASE

echo "finished dump!"