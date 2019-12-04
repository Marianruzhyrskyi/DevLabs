#!/bin/bash
set -ev
nohup pipenv run server > ./ci-build.log &
pipenv run python monitoring.py >> ./ci-build.log &
sleep 65
exit 0
