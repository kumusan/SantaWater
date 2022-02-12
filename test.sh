#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  gcc -o test main.c 
  ./test "$input"
  actual="$?"
  echo "$actual"

  if [ "$actual" != "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

assert 1 1
assert 42 42
assert 10 "10+2-5"
assert 10 "12 + 15 - 9"
assert 10 " 12 + 15 - 9  "

echo OK
