#!/bin/bash
npm install
TETST_ENV="localhost"
TEST_URL_VARIABLE="https://ya.ru/"

echo "----------TEST_PROJECT----------"
echo $TEST_PROJECT at $TEST_URL_VARIABLE
echo "--------------------------------"

./scripts/PreperingFolders.sh
./scripts/entrypoint.sh
export SUITES_PATH="test" && npm run test
npm run merge_reports
npm run generate_mochawesome_report
./scripts/killBrowser.sh
read -n 1 -s -r -p "Press any key to continue"