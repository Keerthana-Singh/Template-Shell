#!/bin/bash
# sum_numbers.sh

if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

sum=0
while IFS= read -r line; do
  sum=$((sum + line))
done < "$1"

sum=$(echo "$sum" | xargs)  # Trim any extra whitespace
echo "$sum"