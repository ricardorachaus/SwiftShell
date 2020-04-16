// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftShell",
    products: [
        .library(
            name: "SwiftShell",
            targets: ["SwiftShell"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftShell",
            dependencies: []
        )
    ]
)
