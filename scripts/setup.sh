#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT_DIR=$SCRIPT_DIR/..

cp $SCRIPT_DIR/meson-files/root-meson.build $ROOT_DIR/meson.build
cp $SCRIPT_DIR/meson-files/src-meson.build $ROOT_DIR/WalnutApp/meson.build

echo 'Build files copied'
echo
echo

read -n1 -r -p "Press any key to continue..."
