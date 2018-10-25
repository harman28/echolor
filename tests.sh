#
# Not much, but it'll do for now
# Just check that commands are running and exiting with the expected code
#

EXIT_CODE=0

#
# If assertion fails, plan build to fail too,
# but don't halt the process, let tests run.
#
function assert_exit_code() {
  if [[ $? != $1 ]]; then
    echo -e "\033[0;31m$2\033[0m"
    EXIT_CODE=1
  fi
}

echo "Running tests"

echo "Test #1/5"
echolor > /dev/null
assert_exit_code 1 'echolor without color does not exit with 1'

echo "Test #2/5"
echolor invalid_colour > /dev/null
assert_exit_code 1 'echolor with invalid color does not exit with 1'

echo "Test #3/5"
echolor red > /dev/null
assert_exit_code 0 'echolor with valid color does not exit with 0'

echo "Test #4/5"
echolor red "THIS IS RED" > /dev/null
assert_exit_code 0 'echolor with multi word text does not exit with 0'

echo "Test #5/5"
echolor red This is an unquoted message > /dev/null
assert_exit_code 0 'echolor with unquoted arguments does not exit with 0'

exit $EXIT_CODE
