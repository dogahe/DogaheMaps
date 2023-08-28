// swift-tools-version: 5.5

import PackageDescription

let package = Package(
  name: "GoogleMaps", platforms: [.iOS(.v14)],
  products: [
    .library(name: "GoogleMaps", targets: ["GoogleMapsTarget"]),
    .library(name: "GoogleMapsCore", targets: ["GoogleMapsCoreTarget"]),
    .library(name: "GoogleMapsBase", targets: ["GoogleMapsBaseTarget"]),
  ], dependencies: [],
  targets: [
    .binaryTarget(
      name: "GoogleMaps", url: "https://github.com/dogahe/DogaheMaps/releases/download/1.0.0/GoogleMaps_3p.xcframework.zip",
      checksum: "c46aa291aee045df611c1744ec28e20b55dab2e8d365bc1315d53296ac1a9ad9"
    ),
    .target(
      name: "GoogleMapsTarget",
      dependencies: ["GoogleMaps"],
      path: "GoogleMaps",
      sources: ["dummy.m"],
      resources: [.copy("Resources/GoogleMapsResources/GoogleMaps.bundle")],
      publicHeadersPath: "Sources"
    ),
    .binaryTarget(
      name: "GoogleMapsCore", url: "https://github.com/dogahe/DogaheMaps/releases/download/1.0.0/GoogleMapsCore_3p.xcframework.zip",
      checksum: "5c947fae109175ea5ff2e2c5ada6bd6b571f3730f7aa4d844b7abda7a5612bdb"
    ),
    .target(
      name: "GoogleMapsCoreTarget",
      dependencies: ["GoogleMapsCore"],
      path: "GoogleMapsCore",
      sources: ["dummy.m"],
      publicHeadersPath: "Sources"
    ),
    .binaryTarget(
      name: "GoogleMapsBase", url: "https://github.com/dogahe/DogaheMaps/releases/download/1.0.0/GoogleMapsBase_3p.xcframework.zip",
      checksum: "75b876c1444d7dcfc17cb6efa1e9fc6773d9bf2f154d95d76d263fde0ac198d0"
    ),
    .target(
      name: "GoogleMapsBaseTarget",
      dependencies: ["GoogleMapsBase"],
      path: "GoogleMapsBase",
      sources: ["dummy.m"],
      publicHeadersPath: "Sources"
    ),
  ]
)