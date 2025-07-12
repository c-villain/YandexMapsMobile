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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.17.0/YandexMapsMobile.xcframework.zip",
            checksum: "f21284bc1a5f9cdd36aeeaf2eb1511bcb4e67c49e46d9561341351608d019459"
        ),
    ]
)
