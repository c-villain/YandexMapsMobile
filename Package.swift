// swift-tools-version:5.3

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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.19.0/YandexMapsMobile.xcframework.zip",
            checksum: "f48b2cfb35f39cfc90eae7108b730467924a3c2c9efd8e591fad209c62e59569"
        ),
    ]
)
