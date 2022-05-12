# YandexMapsMobile

<p align="center">
     <img src="https://img.shields.io/badge/release-4.0.1-blue" />
    <img src="https://img.shields.io/badge/platform-IOS-blue" />
    <img src="https://img.shields.io/badge/iOS-11-blue" />
     <img src="https://img.shields.io/badge/license-MIT-blue" />
</p>

Binary Framework as Swift Package with 4.0.0 Yandex mobile maps

Release with v 4.0.0 binary framework with Yandex mobile maps is taken from [here](https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-2020082814.7344935-775744421.framework.zip) and wrapped to SwiftPM using [this](https://habr.com/ru/company/e-legion/blog/549390/) article.

Release with v 4.0.1 binary framework with Yandex mobile maps is taken from [here](https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-2020082814.7344935-775744421.framework.zip) and patched using huge knowledges of [Igor Makarov](https://github.com/igor-makarov).

👨🏻‍💻 Feel free to subscribe to channel **[SwiftUI dev](https://t.me/swiftui_dev)** in telegram.

If you like this repository, please do :star: to make this useful for others.

## Requirements

- iOS 11.0


## Swift Package Manager

To integrate YandexMapsMobile into your project using SwiftPM add the following to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/c-villain/YandexMapsMobile", from: "4.0.1"),
],
```

## Known issues

❗️ Recommended to Open Xcode using Rosetta 

<img src="https://img.shields.io/badge/release-4.0.1-blue" /> <img src="https://img.shields.io/badge/Xcode%2013.3-Rosetta-blue" /> <img src="https://img.shields.io/badge/Simulators-OK-green" /> <img src="https://img.shields.io/badge/Device-OK-green" /> 

<img src="https://img.shields.io/badge/release-4.0.1-blue" />  works on Xcode > 13.3 can build both on device and simulators but on simulator crashed with error (without Rosetta mode):
```
'cyclone' is not a recognized processor for this target (ignoring processor)
```

<img src="https://img.shields.io/badge/release-4.0.0-blue" /> <img src="https://img.shields.io/badge/Xcode%2013.2.1-Rosetta-blue" /> <img src="https://img.shields.io/badge/Simulators-OK-green" /> <img src="https://img.shields.io/badge/Device-fails-red" /> 

## Special thanks

to [Igor Makarov](https://github.com/igor-makarov) for his contributing!


