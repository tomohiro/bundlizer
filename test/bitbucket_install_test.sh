#!/bin/sh

. "$(pwd)/test/helper.sh"

test_do "bundlizer install https://bitbucket.org/naotos/sample.git"
test_do "bundlizer update sample"
test_do "bundlizer which sample"
