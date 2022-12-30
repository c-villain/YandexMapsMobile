# YandexMapsMobile

[![Latest release](https://img.shields.io/github/v/release/c-villain/YandexMapsMobile?color=brightgreen&label=version)](https://github.com/c-villain/YandexMapsMobile/releases/latest)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fc-villain%2FYandexMapsMobile%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/c-villain/YandexMapsMobile)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fc-villain%2FYandexMapsMobile%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/c-villain/YandexMapsMobile)
[![](https://img.shields.io/badge/SPM-supported-DE5C43.svg?color=brightgreen)](https://swift.org/package-manager/)
[![contact: @lexkraev](https://img.shields.io/badge/contact-%40lexkraev-blue.svg?style=flat)](https://t.me/lexkraev)
[![subscribe: @swiftui_dev](https://img.shields.io/badge/subscribe-%40swiftui_dev-blue.svg?style=flat)](https://t.me/swiftui_dev)

Binary Framework as Swift Package with Yandex mobile maps (full version).

Yandex mobile maps lite version you can find [here](https://github.com/c-villain/YandexMapsMobileLite).

🎉 Works on Apple silicone without Rosetta mode (you can find manual [here](https://github.com/c-villain/YandexMapsMobile/releases)).

## Requirements

- iOS 12.0

## Swift Package Manager

To integrate YandexMapsMobile into your project using SwiftPM do this 👇🏻

- File > Swift Packages > Add Package Dependency
- Add `https://github.com/c-villain/YandexMapsMobile.git`
- Select "Up to Next Major" with "4.2.2"

or add the following code to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/c-villain/YandexMapsMobile", from: "4.2.2"),
],
```
or via [XcodeGen](https://github.com/yonaskolb/XcodeGen) insert into your `project.yml`:

```yaml
name: YourProjectName
options:
  deploymentTarget:
    iOS: 12.0
packages:
  YandexMapsMobile:
    url: https://github.com/c-villain/YandexMapsMobile
    from: 4.2.2
targets:
  YourTarget:
    type: application
    ...
    dependencies:
       - package: YandexMapsMobile
```

## Special thanks

to [Igor Makarov](https://github.com/igor-makarov) for his contributing in the release [v.4.0.1](https://github.com/c-villain/YandexMapsMobile/releases/tag/4.0.1)

## Communication

👨🏻‍💻 Feel free to subscribe to channel **[SwiftUI dev](https://t.me/swiftui_dev)** in telegram.

If you like this repository, please do :star: to make this useful for others.
