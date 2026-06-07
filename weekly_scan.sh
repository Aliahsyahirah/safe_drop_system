#!/bin/bash
cd /mnt/c/xampp/htdocs/safe_drop_system
semgrep --config=p/owasp-top-ten . > "scan_$(date +%Y%m%d).txt"
echo "Scan completed on $(date)" >> scan_log.txt
