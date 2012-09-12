#!/bin/sh

. "$(pwd)/test/helper.sh"

test_do "bundlizer install pry -v=0.9.9"
test_do "bundlizer update pry"
test_do "bundlizer path pry"
