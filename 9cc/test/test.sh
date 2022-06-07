#!/bin/bash

SRC_DIR=~/compiler_study/9cc/src

assert() {
  expected="$1"
  input="$2"
  $SRC_DIR/9cc "$input" > $SRC_DIR/tmp.s
  cc -o $SRC_DIR/tmp $SRC_DIR/tmp.s
  $SRC_DIR/tmp
  actual="$?"
  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}
assert 0 0
assert 42 42
assert 21 "5+20-4"
echo OK