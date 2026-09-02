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
        .package(url: "https://github.com/vbmobile/AMADocModel", .upToNextMinor(from: "3.1.0")),
        .package(url: "https://github.com/vbmobile/AMADocScanner", .upToNextMinor(from: "5.0.2")),
        .package(url: "https://github.com/vbmobile/AMANetworkClient", .upToNextMinor(from: "6.0.1"))
    ],
    targets: [
        .binaryTarget(
            name: "AMADocScanMrz",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMADocScanMrz/AMADocScanMrz-3.1.0.zip",
            checksum: "2cdf0d9c3ab4c782f4db568044d572fa8cba7ec22b9c87b56fd52b9a9f66d043"
        ),
        .target(
            name: "AMADocScanMrzWrapper",
            dependencies: [
                .target(name: "AMADocScanMrz"),
                .product(name: "AMADocModel", package: "AMADocModel"),
                .product(name: "AMADocScanner", package: "AMADocScanner"),
                .product(name: "AMANetworkClient", package: "AMANetworkClient"),
            ],
            path: "Sources",
            sources: ["AMADocScanMrziOS.swift"]
        )
    ]
)
