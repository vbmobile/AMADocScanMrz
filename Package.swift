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
        .package(url: "https://github.com/vbmobile/AMADocScanner", .upToNextMinor(from: "5.0.2"))
    ],
    targets: [
        .binaryTarget(
            name: "AMADocScanMrz",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMADocScanMrz/AMADocScanMrz-3.0.3-ci.23c781a83e0386850025876171c55c59996dac9f.zip",
            checksum: "f3f974592a4e0d3e7230563c8f974773a24fcd62f8db73d53035c43a8f82a00e"
        ),
        .target(
            name: "AMADocScanMrzWrapper",
            dependencies: [
                .target(name: "AMADocScanMrz"),
                .product(name: "AMADocModel", package: "AMADocModel"),
                .product(name: "AMADocScanner", package: "AMADocScanner"),
            ],
            path: "Sources",
            sources: ["AMADocScanMrziOS.swift"]
        )
    ]
)
