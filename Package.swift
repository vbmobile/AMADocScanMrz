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
        .package(url: "https://github.com/vbmobile/AMADocScanner", .upToNextMinor(from: "5.0.2")),
        .package(url: "https://github.com/vbmobile/AMANetworkClient", .upToNextMinor(from: "6.0.1"))
    ],
    targets: [
        .binaryTarget(
            name: "AMADocScanMrz",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMADocScanMrz/AMADocScanMrz-3.0.4.zip",
            checksum: "20288877d94d2116d2366e79c5542f444adabfaf6c088529cd0bf1fcfd5a7fcb"
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
