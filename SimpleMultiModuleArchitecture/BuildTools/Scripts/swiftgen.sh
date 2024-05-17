#!/bin/sh

# swiftgen を実行する

echo $PROJECT_DIR
cd $PROJECT_DIR

if [ "$CONFIGURATION" == "Debug" ]; then
    if [ -e '../BuildTools/.build/release/swiftgen' ]; then
        ../BuildTools/.build/release/swiftgen config run --config ../BuildTools/swiftgen.yml
        echo 'complete swiftgen.'
    else
        echo 'swiftgen does not exist. Run the make command.'
    fi
fi
