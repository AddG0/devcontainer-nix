#!/usr/bin/env bash

srcDir="$(pwd)/src"
testDir="$(pwd)/test"
ghActionDir="$(pwd)/../.github/smoke-test"

templateID="$1"
testID="$2"

bash $ghActionDir/build.sh $templateID $testDir/$testID
