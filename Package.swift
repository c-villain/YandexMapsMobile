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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.10.0/YandexMapsMobile.xcframework.zip",
            checksum: "4e5c9ec7d189b408bbb683a6b2eb50710d0800b8411b5359f652c3330f76075c"
        ),
    ]
)
