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
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.13.0/YandexMapsMobile.xcframework.zip",
            checksum: "12e0aa3a134a640faab24d83e355eeea2b76215edd06cd5497fbdf5780e74ad8"
        ),
    ]
)
