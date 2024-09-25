# YandexMapsMobile

[![Latest release](https://img.shields.io/github/v/release/c-villain/YandexMapsMobile?color=brightgreen&label=version)](https://github.com/c-villain/YandexMapsMobile/releases/latest)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fc-villain%2FYandexMapsMobile%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/c-villain/YandexMapsMobile)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fc-villain%2FYandexMapsMobile%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/c-villain/YandexMapsMobile)
[![](https://img.shields.io/badge/SPM-supported-DE5C43.svg?color=brightgreen)](https://swift.org/package-manager/)

[![contact: @lexkraev](https://img.shields.io/badge/contact-%40lexkraev-blue.svg?style=flat)](https://t.me/lexkraev)
[![Telegram Group](https://img.shields.io/endpoint?color=neon&style=flat-square&url=https%3A%2F%2Ftg.sumanjay.workers.dev%2Fswiftui_dev)](https://telegram.dog/swiftui_dev)

Binary Framework as Swift Package with Yandex mobile maps (full version).

Yandex mobile maps NaviKit SDK version you can find [here](https://github.com/c-villain/YandexMapsMobileNaviKit).

Yandex mobile maps lite version you can find [here](https://github.com/c-villain/YandexMapsMobileLite).

🎉 Works on Apple silicone without Rosetta mode (you can find manual [here](https://github.com/c-villain/YandexMapsMobile/releases)).

## Requirements

- iOS 13.0

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
    iOS: 13.0
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

## Recommedations to use

<details>
  <summary>Using on Apple silicon without Rosetta mode</summary>
  
1. You should init `YMKMapView` with `vulkanPreferred: true`
```swift
YMKMapView.init(frame: .zero, vulkanPreferred: isM1Simulator())

....

    #if targetEnvironment(simulator)
    public static func isM1Simulator() -> Bool {
        return TARGET_CPU_ARM64 != 0
    }
    #else
    public static func isM1Simulator() -> Bool { false }
    #endif

```

2. Call `YMKMapKit.sharedInstance()` in `AppDelegate` as in [example](https://github.com/yandex/mapkit-ios-demo/blob/master/MapKitDemo/AppDelegate.swift)

```swift
/**
If you create instance of YMKMapKit not in application:didFinishLaunchingWithOptions: 
you should also explicitly call YMKMapKit.sharedInstance().onStart()
*/
YMKMapKit.sharedInstance()
```

</details>

<details>
  <summary>Latest recommendations for project settings</summary>
  
to build project you should add following *linker flags* in the *Build Settings* tab:

```yaml
frameworks:
    "CoreFoundation",
    "Foundation",
    "CoreLocation",
    "UIKit",
    "OpenGLES",
    "SystemConfiguration",
    "CoreGraphics",
    "QuartzCore",
    "Security",
    "CoreTelephony",
    "CoreMotion",
    "DeviceCheck"
libraries:
    "resolv",
    "c++"
```

as in the screenshot:

<img width="600" alt="Screenshot 2024-02-09 at 23 33 46" src="https://github.com/c-villain/YandexMapsMobile/assets/6235615/5eb59561-9ddb-45d0-84b3-5051fefce4d3">
  
</details>

<details>
  <summary>YandexMapsMobile as subpackage</summary>

If you use `YandexMapsMobile` as subdependency in your own package you should probably add `linkerSettings` to the target for successful building:

```swift
targets: [
    .target(
        name: "Your target",
        dependencies: [
            .product(name: "YandexMapsMobile", package: "YandexMapsMobile")
        ],
        linkerSettings: [ // <===== ‼️LOOK HERE‼️
            .linkedFramework("CoreLocation"),
            .linkedFramework("CoreTelephony"),
            .linkedFramework("SystemConfiguration"),
            .linkedLibrary("c++"),
            .unsafeFlags(["-ObjC"]),
        ]),
]
```

or add in the projects settings -ObjC and framework "DeviceCheck":

<img width="705" alt="Screenshot 2024-08-14 at 12 50 31" src="https://github.com/user-attachments/assets/abd65454-0cf2-444c-b97e-943de410db62">

or via [XcodeGen](https://github.com/yonaskolb/XcodeGen) [insert](https://github.com/yonaskolb/XcodeGen/issues/639) into your `project.yml`:

```yaml
settings:
  OTHER_LDFLAGS: -ObjC -framework "DeviceCheck"
```
For more details look [here](https://github.com/c-villain/YandexMapsMobile/issues/5).

</details>

## Special thanks

to [Igor Makarov](https://github.com/igor-makarov) for his contributing in the release [v.4.0.1](https://github.com/c-villain/YandexMapsMobile/releases/tag/4.0.1)

## Communication

👨🏻‍💻 Feel free to subscribe to channel **[SwiftUI dev](https://t.me/swiftui_dev)** in telegram.

If you like this repository, please do :star: to make this useful for others.
