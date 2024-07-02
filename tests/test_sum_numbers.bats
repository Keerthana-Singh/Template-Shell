# tests/test_sum_numbers.bats

@test "Script output is correct" {
  run bash scripts/sum_numbers.sh numbers.txt
  echo "Actual output: '$output'"  # Debug statement
  expected_output="10"
  echo "Expected output: '$expected_output'"  # Debug statement
  [ "$output" == "$expected_output" ]
}