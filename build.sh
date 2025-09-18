#!/bin/bash

# The vercel-dart builder already installed Dart.
# Now, we just need to activate Jaspr and build the project.

echo "Activating Jaspr CLI..."
dart pub global activate jaspr_cli

# Add the pub cache to the system's PATH so the 'jaspr' command is found
export PATH="$PATH":"$HOME/.pub-cache/bin"

echo "Building the Jaspr project..."
jaspr build
