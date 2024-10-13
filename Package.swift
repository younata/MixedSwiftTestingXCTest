// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MixedSwiftTestingXCTest",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MixedSwiftTestingXCTest",
            targets: ["MixedSwiftTestingXCTest"]),
    ],
    dependencies: [
        .package(url: "https://github.com/quick/nimble", from: "13.5.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MixedSwiftTestingXCTest"),
        .testTarget(
            name: "MixedSwiftTestingXCTestTests",
            dependencies: [
                "MixedSwiftTestingXCTest",
                .product(name: "Nimble", package: "Nimble")
            ]
        ),
    ]
)
