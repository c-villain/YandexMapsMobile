// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMapsMobile",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "YandexMapsMobile",
            targets: ["YandexMapsMobile"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "YandexMapsMobile",
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.8.0/YandexMapsMobile.xcframework.zip",
            checksum: "bb51187331f77395e79aa5f6021cd6e62916139dd6773ae8ee509980f7807f67"
        ),
    ]
)
