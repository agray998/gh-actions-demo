result=$(./calc.sh -f < test-cases)

echo $'expected: -1\n7\n80\n2\n' > batch_results
echo "got: ${result}" >> batch_results

if [ "${result}" != $'-1\n7\n80\n2' ]; then
  echo "failed batch test"
  exit 1
else
  echo "passed batch test"
fi

if [ $(./calc.sh 3 x 5) == "15" ]; then
  echo "passed single test"
else
  echo "failed single test"
  exit 1
fi
