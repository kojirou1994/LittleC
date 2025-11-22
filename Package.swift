// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "LittleC",
  platforms: [
    .macOS(.v14),
  ],
  products: [
    .library(name: "LittleC", targets: ["LittleC"]
    ),
  ],
  targets: [
    // modulemap to c header directly
    .target(name: "BigC"),
    // wrap unavailable c func/macro
//    .target(name: "LibcExtern"),

    .target(
      name: "LittleC",
      dependencies: [
        "BigC",
//        "LibcExtern",
      ],
      swiftSettings: [
        .enableExperimentalFeature("Extern"),
      ]
    ),
    .testTarget(
      name: "LittleCTests",
      dependencies: ["LittleC"]
    ),

      .executableTarget(
        name: "example",
        dependencies: ["LittleC"],
        swiftSettings: [
//          .enableExperimentalFeature("Extern"),
        ]
      ),
    .executableTarget(
      name: "example2",
    ),
  ]
)
