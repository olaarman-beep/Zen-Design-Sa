#!/usr/bin/env bash
# Run in Google Cloud Shell, from the repo root:  bash deploy-cloudshell.sh YOUR_GCP_PROJECT_ID
set -euo pipefail
PROJECT="${1:?Usage: bash deploy-cloudshell.sh YOUR_GCP_PROJECT_ID}"
command -v firebase >/dev/null || npm install -g firebase-tools
gcloud config set project "$PROJECT"
# One-time: enable Firebase Hosting for the project (safe to repeat)
firebase projects:addfirebase "$PROJECT" 2>/dev/null || true
firebase deploy --only hosting --project "$PROJECT"
echo "Done. Add the custom domain in Firebase console > Hosting > Add custom domain."
