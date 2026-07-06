// swift-tools-version: 6.2
import PackageDescription
//
let package = Package(
    name: "AMADocScanMrz",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AMADocScanMrz",
            targets: ["AMADocScanMrzWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/vbmobile/AMADocModel", .upToNextMinor(from: "3.0.1")),
        .package(url: "https://github.com/vbmobile/AMADocScanner", .upToNextMinor(from: "4.1.14"))
    ],
    targets: [
        .binaryTarget(
            name: "AMADocScanMrz",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMADocScanMrz/AMADocScanMrz-3.0.1.zip",
            checksum: "6869ac0a36834187dec7ef870c96017286e5cd1fbe51521a1ff8e482f8376b78"
        ),
        .target(
            name: "AMADocScanMrzWrapper",
            dependencies: [
                .target(name: "AMADocScanMrz"),
                .product(name: "AMADocModel", package: "AMADocModel"),
                .product(name: "AMADocScanneriOS", package: "AMADocScanner"),
            ],
            path: "Sources",
            sources: ["AMADocScanMrziOS.swift"]
        )
    ]
)
