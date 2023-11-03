#!/usr/bin/env bash

echo "[+] Setting up ..."
if [ ! -d "readme-gen" ]; then
    git clone https://github.com/bitnami-labs/readme-generator-for-helm readme-gen
fi
cd readme-gen
docker build -t readme-gen .
cd ..

echo "[+] Run the tool and mount the current project directory ..."
docker run --rm -v $(pwd):/mnt -w /mnt readme-gen readme-generator -v charts/clair/values.yaml -r charts/clair/README.md 

echo "Done"