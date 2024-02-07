// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    platforms: [
        .iOS("17.0")
    ],
    products: [
        .library(name: "MainApp", targets: ["MainApp"]),
        .library(name: "Presentation", targets: ["Presentation"]),
    ],
    targets: [
        .target(
            name: "MainApp",
            dependencies: [
                "Presentation"
            ]
        ),
        .target(
            name: "Presentation",
            dependencies: []
        ),
    ]
)
