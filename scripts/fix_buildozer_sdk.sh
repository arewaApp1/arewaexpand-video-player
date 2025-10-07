#!/bin/bash
# Permanent patch for Buildozer SDK path issue
set -e

BUILD_PY="$HOME/.buildozer/android/platform/python-for-android/pythonforandroid/build.py"

if [ -f "$BUILD_PY" ]; then
    echo "🔧 Patching Buildozer SDK path..."
    sed -i 's|android-sdk/tools/bin/sdkmanager|android-sdk/cmdline-tools/latest/bin/sdkmanager|g' "$BUILD_PY"
    echo "✅ Buildozer SDK path patched successfully!"
else
    echo "⚠️ build.py not found yet (maybe first build), skipping patch for now."
fi
