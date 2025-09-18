#!/bin/bash

# Dart is already available in Vercel's build environment
# Just run the Jaspr build
dart pub get
dart pub global activate jaspr_cli
jaspr build
