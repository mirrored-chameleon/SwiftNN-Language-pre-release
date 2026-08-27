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
        // Added the SwiftNN dependency configuration correctly
        .package(url: "https://github.com/mirrored-chameleon/SwiftNN.git", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "SwiftNNLanguage",
            dependencies: [
                // Links the module exposed by the package dependency
                .product(name: "SwiftNN", package: "SwiftNN")
            ]
        )
    ]
)
