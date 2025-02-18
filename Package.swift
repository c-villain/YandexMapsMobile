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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.11.0/YandexMapsMobile.xcframework.zip",
            checksum: "2c528704bd3206efabf35a4d2dc0c5bc34b3657eba10779e89b81bee5f40eec0"
        ),
    ]
)
