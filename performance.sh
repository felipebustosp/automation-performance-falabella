#!/bin/bash

test_cases_path="test_cases"
echo "Running Load tests"
for i in 10 50 100
do
    echo "---- Running with $i users ----"
    for test in {1..23}
    do
        echo "Running test case $test"
        echo "Script: test_case_$test.sh"
        comd="$test_cases_path/test_case_$test.sh $i"
        echo "Running: $comd"
        $comd
    done
done
