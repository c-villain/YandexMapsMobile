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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.23.0/YandexMapsMobile.xcframework.zip",
            checksum: "c66d602f6dc5cd390384632a4bd9609c7e0dd6d910dfcb65608b7580d273d39a"
        ),
    ]
)
