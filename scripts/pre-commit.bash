echo "Running pre-commit hooks"
./scripts/run-rubocop.bash

if [ $? -ne 0 ]; then
 echo "Could not commit, see error messages above"
 exit 1
fi

./scripts/run-codegen.bash

if [ $? -ne 0 ]; then
 echo "Could not commit, see error messages above"
 exit 1
fi