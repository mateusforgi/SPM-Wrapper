// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "NordicDFUDynamic",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "NordicDFUDynamic",
            type: .dynamic,
            targets: ["NordicDFUDynamic"]
        ),
          .library(
            name: "ZIPFoundationDynamic",
            type: .dynamic,
            targets: ["ZIPFoundationDynamic"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/NordicSemiconductor/IOS-DFU-Library", .exact("4.12.0")),
        .package(url: "https://github.com/weichsel/ZIPFoundation", .exact("0.9.11")
    )
    ],
    targets: [
        .target(
            name: "NordicDFUDynamic",
            dependencies: [.product(name: "NordicDFU", package: "IOS-DFU-Library")]
        ),
         .target(
            name: "ZIPFoundationDynamic",
            dependencies: ["ZIPFoundation"]
        ),
    ]
)
