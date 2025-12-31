#!/bin/bash

docker network create prd-net \
        --driver bridge \
        --subnet 10.11.0.0/24 