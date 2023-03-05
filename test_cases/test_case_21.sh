#!/bin/bash

endpoint="https://petstore.swagger.io/v2/pet/9223372036854775808"
users=$1

ab -n $users -c 10 $endpoint
echo "Test case finished"