#!/bin/bash
MY_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
MY_DIR="$(dirname $MY_PATH)"
cd ${MY_DIR}

cat deployment.yaml | docker run --rm -i kubevious/cli:1.0.61 guard --stream --k8s-version v1.29 --ignore-unknown --skip-rules container-env-secret-ref container-env-from-secret-ref pod-spec-volume-secret-ref
