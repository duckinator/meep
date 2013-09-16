#!/usr/bin/env bash

function bar() {
  echo "----"
}

cat test.rb | gcc -x c - && ./a.out && rm a.out

bar

php test.rb || /bin/echo "PHP failed."

bar

node test.rb || /bin/echo "Node.js failed."

bar

ruby test.rb
