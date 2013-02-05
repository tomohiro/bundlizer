#!/bin/sh

. "$(pwd)/test/helper.sh"

test_do "bundlizer install pry -v=0.9.9"
test_do "bundlizer update pry"
test_do "bundlizer which pry"
test_do "bundlizer install backup"
test_do "bundlizer depends backup --add-gem net-ssh -v '~> 2.3.0'"
test_do "bundlizer depends backup --add-gem net-scp -v '~> 1.0.4'"
