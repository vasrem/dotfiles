#!/bin/bash
set -euo pipefail

set -x
for i in $(find . -name run.sh); do
    /bin/bash $i
done
set +x
