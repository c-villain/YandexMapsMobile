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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.8.1/YandexMapsMobile.xcframework.zip",
            checksum: "dc0ba45bfc47f0c3bd3f864a7a047981b512f4def9960a2e421eef90936cb465"
        ),
    ]
)
