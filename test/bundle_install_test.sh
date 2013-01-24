#!/bin/sh

. "$(pwd)/test/helper.sh"

test_do "bundlizer install Tomohiro/downcer"
test_do "bundlizer update downcer"
test_do "bundlizer which downcer"
