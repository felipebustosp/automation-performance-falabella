#!/bin/bash
#!/bin/bash

endpoint="https://petstore.swagger.io/v2/pet/findByStatus?status=available"
users=$1

ab -n $users -c 10 $endpoint
echo "Test case finished"