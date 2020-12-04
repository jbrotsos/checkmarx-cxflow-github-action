#!/bin/sh
java -jar /app/cx-flow.jar --spring.profiles.active="${CXFLOW_ENABLED-VULNERABILITY-SCANNERS}" --scan --github.api-url="${GITHUB_API_URL}/repos/" --cx-team="${TEAM}" --cx-project="${PROJECT}" --app="${APP}" --f=. ${CXFLOW_PARAMS}
