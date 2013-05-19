#!/bin/sh

. "$(pwd)/test/helper.sh"

# Cleanup

    cleanup() {
      [ -d apps ] && {
        rm -rf apps
      }

      [ -d bundles ] && {
        rm -rf bundles
      }
    }

# Test runner

    run_all_tests() {
      for test in $(ls test/*_test.sh); do
        sh $test
        [ $? != 0 ] && {
          echo "Oops, test failed."
          cleanup
          exit 1
        }
      done

      cleanup
      echo 'Congrats! test passed.'
    }


run_all_tests
