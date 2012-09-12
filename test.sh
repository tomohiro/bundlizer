#!/bin/sh

# Define constants

    readonly PREFIX=$(cd $(dirname $0) && pwd)
    readonly TESTS=$PREFIX/test


# Failed tests count

    FAILED=0

# Define test functions

    success() {
      echo "[success]" $1
    }

    failure() {
      echo "[failure]" $1
      FAILED=$(($FAILED+1))
      return 1
    }

    assert_true() {
      local case=$1
      local result=$2
      if [ $result = 0 ]; then
        success $case
      else
        failure $case
      fi
    }


# Test runner

    run_all_tests() {
      for test in $(ls $TESTS); do
        sh $TESTS/$test
        assert_true $test $?
      done

      if [ $FAILED = 0 ]; then
        success 'Yeah. All test passed.'
      else
        failure "Oops, test failed. (errors: $FAILED)"
        exit 1
      fi
    }


run_all_tests
