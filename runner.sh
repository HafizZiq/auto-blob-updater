#!/bin/bash
# Copyright (C) 2019 The Raphielscape Company LLC.
#
# Licensed under the Raphielscape Public License, Version 1.b (the "License");
# you may not use this file except in compliance with the License.
#
# CI Runner Script for Generation of blobs

# We need this directive
# shellcheck disable=1090

echo "***Auto Blob Updater***"
apt update > /dev/null 2>&1
apt install curl git python3 python3-pip patchelf brotli unzip zip p7zip-full -y > /dev/null 2>&1
pip3 install requests pyYaml > /dev/null 2>&1
bash -c "bash runner_user.sh"
