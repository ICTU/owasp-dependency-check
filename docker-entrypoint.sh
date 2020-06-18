#!/bin/sh

/usr/share/dependency-check/bin/dependency-check.sh --out "/tmp/reports" --scan "/tmp/src" --data "/tmp/dependency-check/data" --enableExperimental --format "ALL" --cveValidForHours 48  --project ${PROJECT_NAME} $@
