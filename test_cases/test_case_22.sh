#!/bin/bash

endpoint="https://petstore.swagger.io/v2/user/login?username=123&password='(*%26%$%23'"
users=$1

ab -n $users -c 10 $endpoint
echo "Test case finished"