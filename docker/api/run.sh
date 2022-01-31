#!/bin/bash
CURDIR=$(cd "$(dirname "$0")"; pwd)
docker run -d --name starcoin-faucet-api -p 8000:8000 \
    -e "STARCOIN_FAUCET_DEBUG=${STARCOIN_FAUCET_DEBUG}" \
    -e "STARCOIN_FAUCET_MYSQL_HOST=${STARCOIN_FAUCET_MYSQL_HOST}" \
    -e "STARCOIN_FAUCET_MYSQL_PORT=${STARCOIN_FAUCET_MYSQL_PORT}" \
    -e "STARCOIN_FAUCET_MYSQL_USER=${STARCOIN_FAUCET_MYSQL_USER}" \
    -e "STARCOIN_FAUCET_MYSQL_PWD=${STARCOIN_FAUCET_MYSQL_PWD}" \
    -e "STARCOIN_FAUCET_MYSQL_DB=${STARCOIN_FAUCET_MYSQL_DB}" \
    -e "STARCOIN_FAUCET_PRIVATE_KEY_BARNARD=${STARCOIN_FAUCET_PRIVATE_KEY_BARNARD}" \
    -e "STARCOIN_FAUCET_PRIVATE_KEY_PROXIMA=${STARCOIN_FAUCET_PRIVATE_KEY_PROXIMA}" \
    -e "STARCOIN_FAUCET_PRIVATE_KEY_HALLEY=${STARCOIN_FAUCET_PRIVATE_KEY_HALLEY}" \
    -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
    -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" \
    -e "AWS_REGION=${AWS_REGION}" \
    -e "AWS_SENDER=${AWS_SENDER}" \
    -e "AWS_RECIPIENT=${AWS_RECIPIENT}" \
    -e "AWS_FAUCET_SUBJECT=${AWS_FAUCET_SUBJECT}" \
    starcoin/starcoin-faucet-api:latest

docker ps


