// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    platforms: [
        .iOS("17.0")
    ],
    products: [
        .library(name: "MainAppKit", targets: ["MainAppKit"]),
        .library(name: "Presentation", targets: ["Presentation"]),
        .library(name: "Common", targets: ["Common"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-dependencies", exact: "1.2.1"),
    ],
    targets: [
        .target(
            name: "MainAppKit",
            dependencies: [
                "Presentation",
            ]
        ),
        .target(
            name: "Presentation",
            dependencies: [
                .product(name: "Dependencies", package: "swift-dependencies"),
                "Common",
            ]
        ),
        .target(
            name: "Common",
            dependencies: [],
            resources: [
                .process("Resources")
            ]
        ),
    ]
)
