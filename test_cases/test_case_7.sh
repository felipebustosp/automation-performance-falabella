#!/bin/bash

endpoint="https://petstore.swagger.io/v2/user"
request="test_requests/test_case_7.json"
users=$1
method="POST"

if [ -e request.json ]; then 
    rm -rf request.json
fi
curl -X $method -H "Content-Type: application/json" -d @$request $endpoint > request.json
ab -n $users -c 10 -p request.json -T "application/json" $endpoint
rm -rf request.json
echo "Test case finished"