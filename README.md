# YandexMapsMobile

<p align="center">
     <img src="https://img.shields.io/badge/release-4.2.2-blue" />
    <img src="https://img.shields.io/badge/platform-IOS-blue" />
    <img src="https://img.shields.io/badge/iOS-12-blue" />
     <img src="https://img.shields.io/badge/license-MIT-blue" />
</p>

Binary Framework as Swift Package with Yandex mobile maps.

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
