#!/bin/bash

endpoint="https://petstore.swagger.io/v2/pet"
request="test_requests/test_case_2.json"
method="PUT"
users=$1

if [ -e request.json ]; then 
    rm -rf request.json
fi
curl -X $method -H "Content-Type: application/json" -d @$request $endpoint > request.json
ab -n $users -c 10 -p request.json -T "application/json" -u $method $endpoint
rm -rf request.json
