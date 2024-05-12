#!/bin/sh

# swift-format を実行する

echo $PROJECT_DIR
cd $PROJECT_DIR

if [ "$CONFIGURATION" == "Debug" ]; then
    if [ -e '../BuildTools/.build/release/swift-format' ]; then

        # .swift-format 設定ファイルをもとにフォーマッターをかける
        ## Note: コマンドオプションについて
        ##   -p: 並列に実行
        ##   -i: フォーマット時に現在のファイルを上書きする
        ##   -r: フォルダを再帰的に確認
        
        # 注意点: Package.swift に formatter をかけると、ビルド時に更新されてしまう
        # -> `resolving package graph` で毎回待たされることになるため、避けること
        # ../BuildTools/.build/release/swift-format format --configuration ../BuildTools/.swift-format -p -i -r $PROJECT_DIR/../Modules/Sources/ $PROJECT_DIR/../Modules/Package.swift
        ../BuildTools/.build/release/swift-format format --configuration ../BuildTools/.swift-format -p -i -r $PROJECT_DIR/../Modules/Sources/
        
        # .swift-format 設定ファイルをもとに Lint をかける
        ## Note: コマンドオプションについて
        ##   -p: 並列に実行
        ##   -r: フォルダを再帰的に確認
        # ../BuildTools/.build/release/swift-format lint --configuration ../BuildTools/.swift-format -p -r $PROJECT_DIR/../Modules/Sources/ $PROJECT_DIR/../Modules/Package.swift
        ../BuildTools/.build/release/swift-format lint --configuration ../BuildTools/.swift-format -p -r $PROJECT_DIR/../Modules/Sources/
        
        echo 'complete swift-format.'
        
    else
        echo 'swift-format does not exist. Run the make command.'
    fi
fi
