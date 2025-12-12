// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "LittleC",
  platforms: [
    .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13),
  ],
  products: [
    .library(name: "LittleC", targets: ["LittleC"]),
    .library(name: "PlatformC", targets: ["PlatformC"]),
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
        .define("APPLE", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS, .macCatalyst])),
        .define("UNIX_BSD", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS, .macCatalyst])),
        .enableExperimentalFeature("Extern"),
      ]
    ),
    .target(
      name: "PlatformC",
      swiftSettings: [
        .define("APPLE", .when(platforms: [.macOS, .iOS, .tvOS, .watchOS, .macCatalyst])),
      ]
    ),
    .testTarget(
      name: "LittleCTests",
      dependencies: ["LittleC"]
    ),
  ]
)

