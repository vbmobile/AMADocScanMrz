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
        .package(url: "https://github.com/vbmobile/AMADocModel", .upToNextMinor(from: "4.2.0")),
        .package(url: "https://github.com/vbmobile/AMADocScanner", .upToNextMinor(from: "5.0.2"))
    ],
    targets: [
        .binaryTarget(
            name: "AMADocScanMrz",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMADocScanMrz/AMADocScanMrz-4.1.0.zip",
            checksum: "af60a8c2c5c7a862d25294c06717d55b9e3df8499fc06698abfc334df0485bad"
        ),
        .target(
            name: "AMADocScanMrzWrapper",
            dependencies: [
                .target(name: "AMADocScanMrz"),
                .product(name: "AMADocModel", package: "AMADocModel"),
                .product(name: "AMADocScanner", package: "AMADocScanner")
            ],
            path: "Sources",
            sources: ["AMADocScanMrziOS.swift"]
        )
    ]
)
