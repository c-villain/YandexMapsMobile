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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.15.0/YandexMapsMobile.xcframework.zip",
            checksum: "6634928dc246e1ab24fa63b6382afd4a657e1af5b81c2ef77dbc25b6b9f6f421"
        ),
    ]
)
