#!/bin/bash

endpoint="https://petstore.swagger.io/v2/store/order"
request="test_requests/test_case_11.json"
method="POST"
users=$1

if [ -e request.json ]; then 
    rm -rf request.json
fi
curl -X $method -H "Content-Type: application/json" -d @$request $endpoint > request.json
ab -n $users -c 10 -p request.json -T "application/json" $endpoint
rm -rf request.json
echo "Test case finished"