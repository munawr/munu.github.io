#!/bin/bash

# Install Dart SDK without sudo
export DART_SDK_HOME="$HOME/dart-sdk"
export PATH="$DART_SDK_HOME/bin:$PATH"

# Download and install Dart SDK
wget -O dart-sdk.zip https://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-x64-release.zip
unzip -q dart-sdk.zip -d $HOME
rm dart-sdk.zip

# Verify Dart installation
dart --version

# Run the Jaspr build
dart pub get
dart pub global activate jaspr_cli
export PATH="$HOME/.pub-cache/bin:$PATH"
jaspr build
