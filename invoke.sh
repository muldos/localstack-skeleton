# ./invoke.bash
AWS_REGION=eu-west-3
ENDPOINT=http://localhost:4566
FUNCTION_NAME=nodejs-example
PAYLOAD='{"myParam":"foobar"}'
aws2 lambda invoke \
  --function-name ${FUNCTION_NAME} \
  --invocation-type RequestResponse \
  --no-sign-request \
  --log-type Tail \
  --payload ${PAYLOAD}\
  --endpoint ${ENDPOINT} \
  --region eu-west-3 \
./output.json