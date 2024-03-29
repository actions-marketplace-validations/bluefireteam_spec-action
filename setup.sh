#!/usr/bin/env bash

version=$1
run_bootstrap=$2

echo "Installing Spec $version..."

dart pub global activate spec_cli $version

if [ "$run_tests" != "false" ]; then
  dart pub global run spec_cli
fi
