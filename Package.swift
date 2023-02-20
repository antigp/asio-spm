// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "asio",
    products: [
        .library(
            name: "asio",
            targets: ["asio"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Cogosense/iOSBoostFramework.git", from: "1.81.2")
    ],
    targets: [
        .target(
            name: "asio",
            dependencies: [.product(name: "boost", package: "iOSBoostFramework")])
    ]
)
