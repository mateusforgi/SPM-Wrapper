// swift-tools-version:5.5
//
// The `swift-tools-version` declares the minimum version of Swift required to
// build this package. Do not remove it.

import PackageDescription

let package = Package(
  name: "NordicDFUDynamic",
  platforms: [
    .macOS(.v10_14),
    .iOS(.v9),
    .watchOS(.v4),
    .tvOS(.v11)
  ],
  products: [
    .library(name: "NordicDFUDynamic", type: .dynamic, targets: ["NordicDFUDynamic"])
  ],
  dependencies: [
    .package(url: "https://github.com/NordicSemiconductor/IOS-DFU-Library", from: "4.12.0"),
  ],
  targets: [
    .target(
        name: "NordicDFUDynamic",
        dependencies: [
            .product(name: "NordicDFU", package: "IOS-DFU-Library")
        ]
    )
  ],
  swiftLanguageVersions: [.v5]
)

