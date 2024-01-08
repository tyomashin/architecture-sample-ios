# 概要

iOS アプリ開発で使用するためのアーキテクチャサンプルを格納する。

* 最低限、動作するサンプルアプリを作成する

# アーキテクチャ一覧

* SimpleMultiModuleArchitecture

# アーキテクチャ概要

## SimpleMultiModuleArchitecture

以下の観点に重点を置いたアーキテクチャ。

* 依存関係逆転の原則に従い、抽象（プロトコル）に依存
    - 責務分割
    - テスタブル
* DB や API、時計など、実行時に挙動変わるインスタンスを DI 可能
    - DI ライブラリとして swift-dependencies を使用

ただし、以下のようなコストが高い実装は削減している。

* 細かいモジュールの分割
    - 循環依存を避けるためによりな詳細な設計が必要になるため、大きな括りでのみモジュールを分割
* UI テスト


TODO: 考慮点

* テストの書き方
* DB/API のデータ型を Entity に変換する処理
* View に渡すデータ型（ViewData）を別途定義するか、Entity をそのまま渡すか要検討
* swift-dependencies の挙動をチェック

### プロジェクト構成

* SwiftPM によるマルチモジュール構成
* 環境別のプロジェクト構成は .xcodeproj で管理
* xcworkspace で、Swift PM のモジュール（パッケージ）と環境別のプロジェクト構成を管理する

### アーキテクチャ

iOS アプリ開発でそれなりに使用されている VIPER を採用している。

プレゼンテーションレイヤーとしては、View + Presenter + Router で構成され、UIロジックを担当する。
ドメインレイヤーは、Interactor + Entity で構成され、ビジネスロジックを担当する。

その他、DB や API、ファイル操作、時計、乱数生成など、
外部システムに依存したり、実行のたびに挙動が変わったりするものは、
別モジュールで実装する。（この階層をインフラストラクチャーレイヤーと呼んで良いかはわからないが、便宜上そう呼ぶ）

### DI

# 共通項目

アプリ開発を進めるにあたり、アーキテクチャによらない共通の内容について整理する。

* GitHub Issue/PR の Templetes
* GitHub Projects によるタスク管理・ガントチャート
* GitHub Actions による CI/CD 実践
* Xcode Templetes

## GitHub Issue/PR の Templetes

## GitHub Projects によるタスク管理・ガントチャート

## GitHub Actions による CI/CD 実践

TODO

## Xcode Templetes

