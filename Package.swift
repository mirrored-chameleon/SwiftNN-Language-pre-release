// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftNNLanguage",
    products: [
        .executable(
            name: "SwiftNNLanguage",
            targets: ["SwiftNNLanguage"]
        )
    ],
    dependencies: [
        .package(path: "../../Documents/GitHub/SwiftNN/SwiftNN")
    ],
    targets: [
        .executableTarget(
            name: "SwiftNNLanguage",
            dependencies: [
                "SwiftNN"
            ]
        )
    ]
)