#!/bin/bash

set -e

OUT="alltests-out"

mkdir $OUT

TESTS=("simplest" "1round-onlytrajs" "1round" "test" "1round-2trajworkloads" "3rounds" "3rounds.rhea-analysis")

for TEST in "${TESTS[@]}"
do
    echo "On test: $TEST"
    ./workflow-$TEST.sh &> $OUT/$TEST.out
    echo "Test Completed: $TEST"
done
