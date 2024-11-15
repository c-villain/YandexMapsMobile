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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.9.0/YandexMapsMobile.xcframework.zip",
            checksum: "b42847f33c20bfcb43d41fc59fa3e3890899eb1543523f00fad44462ae104b9f"
        ),
    ]
)
