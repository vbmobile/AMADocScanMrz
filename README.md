# AMADocScanMrz

High-level MRZ document scanning and processing SDK for iOS. Wraps the native scanning engine with document model support for seamless integration.

## Requirements

- iOS 15.0+
- Swift 6.2+

## Dependencies

| Package | Version |
|---------|---------|
| [AMADocModel](https://github.com/vbmobile/AMADocModel) | See Package.swift |
| [AMADocScanner](https://github.com/vbmobile/AMADocScanner) | See Package.swift |

## Installation

### Swift Package Manager

#### Xcode

1. Go to **File > Add Package Dependencies**
2. Enter the repository URL:
   ```
   https://github.com/vbmobile/AMADocScanMrz
   ```
3. Select the desired version

#### Package.swift

Add the dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/vbmobile/AMADocScanMrz")
]
```

Then add `AMADocScanMrz` to your target's dependencies:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "AMADocScanMrz", package: "AMADocScanMrz")
    ]
)
```

> **Note:** Transitive dependencies (`AMADocModel`, `AMADocScanner`) are resolved automatically by SPM.

## License

See [LICENSE.md](LICENSE.md) for details. Copyright Vision-Box S.A.
