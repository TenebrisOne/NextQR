#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
npm install
npm run assemble
firebase use nexbarqr
firebase deploy --only hosting:prod
