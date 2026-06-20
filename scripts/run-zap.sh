#!/bin/bash

set -euxo pipefail

echo "Current Directory:"
pwd

echo "Repository Contents:"
find /zap/wrk/doc-enrich-zap-dast

echo "Automation File:"
ls -l /zap/wrk/doc-enrich-zap-dast/zap/automation.yaml

zap.sh -cmd 
-autorun /zap/wrk/doc-enrich-zap-dast/zap/automation.yaml
