// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "LittleC",
  platforms: [
    .macOS(.v14),
  ],
  products: [
    .library(name: "LittleC", targets: ["LittleC"]),
  ],
  targets: [
    // modulemap to c header directly
    .target(name: "BigC"),
    .target(
      name: "LittleC",
      dependencies: [
        "BigC",
      ],
      swiftSettings: [
        .enableExperimentalFeature("Extern"),
      ]
    ),
    .testTarget(
      name: "LittleCTests",
      dependencies: ["LittleC"]
    ),
  ]
)
