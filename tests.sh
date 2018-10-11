#
# Not much, but it'll do for now
# Just check that commands are running and exiting with the expected code
#

function assert_exit_code() {
  if [[ $? != $1 ]]; then
    echo "Assertion failed"
    exit 1
  fi
}

echo "Running tests"

echolor > /dev/null
assert_exit_code 1
echo "1/5 succeeded"

echolor invalid_colour > /dev/null
assert_exit_code 1
echo "2/5 succeeded"

echolor red > /dev/null
assert_exit_code 0
echo "3/5 succeeded"

echolor red "THIS IS RED" > /dev/null
assert_exit_code 0
echo "4/5 succeeded"

echolor red This is an unquoted message > /dev/null
assert_exit_code 0
echo "5/5 succeeded"
