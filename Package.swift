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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.16.0/YandexMapsMobile.xcframework.zip",
            checksum: "ee509c4f1e717ac6fb5e212e4fdaa4e48bce4643f25d88dc1cec056784c0537f"
        ),
    ]
)
