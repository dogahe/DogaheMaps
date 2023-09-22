// swift-tools-version: 5.5

import PackageDescription

let package = Package(
  name: "GoogleMaps", platforms: [.iOS(.v14)],
  products: [
    .library(name: "GoogleMaps", targets: ["GoogleMapsTarget"]),
    .library(name: "GoogleMapsCore", targets: ["GoogleMapsCoreTarget"]),
    .library(name: "GoogleMapsBase", targets: ["GoogleMapsBaseTarget"]),
    .library(name: "GoogleMapsM4B", targets: ["GoogleMapsM4BTarget"]),
  ], dependencies: [],
  targets: [
    .binaryTarget(
      name: "GoogleMaps", url: "https://github.com/dogahe/DogaheMaps/releases/download/1.0.10/GoogleMaps_3p.xcframework.zip",
      checksum: "ee9f35cb5059dacd89c2f1c85bd1a6326f8eb7dc885fc8b3ccfcbf87f48a427d"
    ),
    .target(
      name: "GoogleMapsTarget",
      dependencies: ["GoogleMaps"],
      path: "Maps",
      sources: ["dummy.m"],
      resources: [.copy("Resources/GoogleMapsResources/GoogleMaps.bundle")],
      publicHeadersPath: "Sources"
    ),
    .binaryTarget(
      name: "GoogleMapsCore", url: "https://github.com/dogahe/DogaheMaps/releases/download/1.0.10/GoogleMapsCore_3p.xcframework.zip",
      checksum: "2fc61c33415bf354dd80307abbb707553682cb37b3773874de11797a0a2c1344"
    ),
    .target(
      name: "GoogleMapsCoreTarget",
      dependencies: ["GoogleMapsCore"],
      path: "Core",
      sources: ["dummy.m"],
      publicHeadersPath: "Sources"
    ),
    .binaryTarget(
      name: "GoogleMapsBase", url: "https://github.com/dogahe/DogaheMaps/releases/download/1.0.10/GoogleMapsBase_3p.xcframework.zip",
      checksum: "78e3dc136c8b040b8b51195333c1fe73787b909559aacc9da5258938b3a90b52"
    ),
    .target(
      name: "GoogleMapsBaseTarget",
      dependencies: ["GoogleMapsBase"],
      path: "Base",
      sources: ["dummy.m"],
      publicHeadersPath: "Sources"
    ),
    .binaryTarget(
      name: "GoogleMapsM4B", url: "https://github.com/dogahe/DogaheMaps/releases/download/1.0.10/GoogleMapsM4B_3p.xcframework.zip",
      checksum: "26b92a9e5872f4e6375528fd4b7aa7a8c164a94a31e86e3eca51932cd52be790"
    ),
    .target(
      name: "GoogleMapsM4BTarget",
      dependencies: ["GoogleMapsM4B"],
      path: "M4B",
      sources: ["dummy.m"],
      publicHeadersPath: "Sources"
    ),
  ]
)

// checksum: "c46aa291aee045df611c1744ec28e20b55dab2e8d365bc1315d53296ac1a9ad9"
// checksum: "5c947fae109175ea5ff2e2c5ada6bd6b571f3730f7aa4d844b7abda7a5612bdb"
// checksum: "75b876c1444d7dcfc17cb6efa1e9fc6773d9bf2f154d95d76d263fde0ac198d0"
