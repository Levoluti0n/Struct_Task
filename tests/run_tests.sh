#!/bin/bash

cd ..

gcc main.c -o main
if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi

cd tests

pass=0
fail=0

for i in 1 2 3; do
    input="input$i.txt"
    expected="output$i.txt"
    output="output_student$i.txt"

    ../main < "$input" > "$output"

    if diff -q "$output" "$expected" > /dev/null; then
        echo "Test $i passed ✅"
        pass=$((pass+1))
    else
        echo "Test $i failed ❌"
        echo "Expected:"
        cat "$expected"
        echo "Got:"
        cat "$output"
        fail=$((fail+1))
    fi
done

echo "-------------------"
echo "Passed: $pass"
echo "Failed: $fail"

if [ $fail -ne 0 ]; then
    exit 1
fi
