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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.22.0/YandexMapsMobile.xcframework.zip",
            checksum: "7507ec81f7b51f60dee290e3b0e90af6c0dae2d84a0dc7ba2c4eebd16588f6c7"
        ),
    ]
)
