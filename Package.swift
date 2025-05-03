// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "EntityInteractionKit",
    platforms: [
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "EntityInteractionKit",
            targets: ["EntityInteractionKit"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EntityInteractionKit",
            dependencies: [],
            path: "Sources"
        )
    ]
)
