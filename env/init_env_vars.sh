CURRENT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

export ENV_DIR=$CURRENT_PATH
export TESTS_DIR=$CURRENT_PATH../tests/
export TEST_ENV=local