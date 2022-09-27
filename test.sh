result=$(./calc.sh -f < test-cases)

if [ ${result} != "7 -1 80 2" ]; then
  echo "failed batch test"
  exit 1
else
  echo "passed batch test"
fi

if [ $(./calc.sh 3 x 5) != "15" ]; then
  echo "failed single test"
  exit 1
else
  echo "passed single test"
fi
