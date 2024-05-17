#!/bin/sh

# license-plist を実行する
# NOTE: license-plist は GitHub API を使用しているため、リクエストしすぎるとエラーが返却されるようになる（1時間使えなくなる）
# -> このため、BuildPhases でビルドのたびに実行してはならず、本スクリプトは使用していない
# -> 代わりに、Makefile にコマンドを記載しているため、必要な時にそちらを使用する

echo $PROJECT_DIR
cd $PROJECT_DIR

if [ "$CONFIGURATION" == "Debug" ]; then
    if [ -e '../BuildTools/.build/release/license-plist' ]; then
        ## Note: オプションについて
        ##   --force: ライセンスに変更がなくても、常にコマンドを最後まで実行する
        ##   --output-path: ファイルの出力先（通常は Settings.bundle のパスを指定する）
        ##   --single-page: 全てのライセンスを1ページに記載する場合は指定する
        ##   --package-paths: Package.swift のパスを指定する
        ##   --config-path: 
        ../BuildTools/.build/release/license-plist --force --package-paths ../BuildTools/Package.swift ../Modules/Package.swift --output-path ../Shared/Settings.bundle --config-path ../BuildTools/licence/license_plist.yml
        echo 'complete license-plist.'
    else
        echo 'license-plist  does not exist. Run the make command.'
    fi
fi
