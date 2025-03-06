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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.12.0/YandexMapsMobile.xcframework.zip",
            checksum: "7575619b9e4485aa59131cf30c15f473a164798ecbbded7f7b4121085ebc95c4"
        ),
    ]
)
