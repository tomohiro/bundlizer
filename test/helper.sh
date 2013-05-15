#!/bin/sh

# Define constants

    readonly PREFIX=$(cd $(dirname $0) && pwd)
    readonly TESTS=$PREFIX/test

# Define test functions

    success() {
      echo "[success]" $@
    }

    failure() {
      echo "[failure]" $@
      exit 1
    }

    assert_true() {
      result=$?
      case=$1
      if [ $result = 0 ]; then
        success $case
      else
        failure $case
      fi
    }

    test_do() {
      eval "./bin/$1" > /dev/null 2>&1
      assert_true "$1"
    }
