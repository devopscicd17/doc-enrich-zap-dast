#!/bin/bash

set -euo pipefail

echo "Starting OWASP ZAP Automation Framework"

cd /zap/wrk/doc-enrich-zap-dast

mkdir -p reports

zap.sh 
-cmd 
-autorun zap/automation.yaml

echo "Reports generated in reports/"
zap.sh \
  -config selenium.browser=chrome-headless \
  -autorun automation.yaml
