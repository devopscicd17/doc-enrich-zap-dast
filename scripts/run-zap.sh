#!/bin/bash
set -euxo pipefail

mkdir -p /zap/wrk/reports

echo "ZAP Version"
zap.sh -version

echo "Automation File"
cat /zap/wrk/doc-enrich-zap-dast/zap/automation.yaml

zap.sh -cmd \
  -autorun /zap/wrk/doc-enrich-zap-dast/zap/automation.yaml

echo "Reports"
ls -lah /zap/wrk/reports || true
