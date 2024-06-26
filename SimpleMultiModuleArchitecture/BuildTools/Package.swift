// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BuildTools",
    platforms: [.macOS(.v11)],
    dependencies: [
        .package(url: "https://github.com/apple/swift-format", branch: "main"),
        .package(url: "https://github.com/SwiftGen/SwiftGen.git", exact: "6.6.3"),
        .package(url: "https://github.com/mono0926/LicensePlist.git", exact: "3.25.1"),
    ],
    targets: []
)
