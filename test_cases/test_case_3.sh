#!/bin/bash

endpoint="https://petstore.swagger.io/v2/pet/1"
users=$1
method="DELETE"


ab -n $users -c 10 -X $method $endpoint
echo "Test case finished"