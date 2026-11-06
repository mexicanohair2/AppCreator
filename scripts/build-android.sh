#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
command -v java >/dev/null || { echo "Java 17 is required"; exit 1; }
[ -d android ] || npx cap add android
npx cap sync android
cd android
./gradlew assembleDebug
echo "APK: android/app/build/outputs/apk/debug/app-debug.apk"
