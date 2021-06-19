// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "DeltaLogger",
  products: [
    .library(
      name: "DeltaLogger",
      targets: ["DeltaLogger"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/apple/swift-log",
      from: "1.4.2")
  ],
  targets: [
    .target(
      name: "DeltaLogger",
      dependencies: [
        .product(name: "Logging", package: "swift-log")
      ]),
    .testTarget(
      name: "DeltaLoggerTests",
      dependencies: ["DeltaLogger"]),
  ]
)
