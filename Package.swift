// swift-tools-version: 5.5

import PackageDescription

let package = Package(
  name: "GoogleMaps", platforms: [.iOS(.v14)],
  products: [
    .library(name: "GoogleMaps", targets: ["Maps"]),
  ], dependencies: [],
  targets: [
    .binaryTarget(
      name: "GoogleMaps", url: "https://dl.google.com/geosdk/swiftpm/8.3.0/GoogleMaps_3p.xcframework.zip",
      checksum: "4d9b8a4836d52eb7ef6257968853a9949b02cde299a05fe7389efab54c59128c"
    ),
    .target(
      name: "Maps",
      dependencies: ["GoogleMaps", "Core", "Base"],
      path: "Maps",
      sources: ["dummy.m"],
      resources: [.copy("Resources/GoogleMapsResources/GoogleMaps.bundle")],
      publicHeadersPath: "Sources",
      linkerSettings: [
        .linkedFramework("Accelerate"),
        .linkedFramework("CoreImage"),
        .linkedFramework("CoreText"),
        .linkedFramework("GLKit"),
        .linkedFramework("ImageIO"),
        .linkedFramework("Metal"),
        .linkedFramework("OpenGLES"),
        .linkedFramework("QuartzCore"),
      ]
    ),
    .binaryTarget(
      name: "GoogleMapsCore", url: "https://dl.google.com/geosdk/swiftpm/8.3.0/GoogleMapsCore_3p.xcframework.zip",
      checksum: "833bdd8b455bddb54f02330ea8339a47003403293392ad37059e7cd6e59c283c"
    ),
    .target(
      name: "Core",
      dependencies: ["GoogleMapsCore"],
      path: "Core",
      sources: ["dummy.m"],
      publicHeadersPath: "Sources"
    ),
    .binaryTarget(
      name: "GoogleMapsBase", url: "https://dl.google.com/geosdk/swiftpm/8.3.0/GoogleMapsBase_3p.xcframework.zip",
      checksum: "5d0b7a00385bfaddbe9acb39762e5e62644ca98f7cc6dcaaaf3737d2a0084854"
    ),
    .target(
      name: "Base",
      dependencies: ["GoogleMapsBase"],
      path: "Base",
      sources: ["dummy.m"],
      publicHeadersPath: "Sources",
      linkerSettings: [
        .linkedLibrary("z"),
        .linkedLibrary("c++"),
        .linkedFramework("Contacts"),
        .linkedFramework("CoreData"),
        .linkedFramework("CoreGraphics"),
        .linkedFramework("CoreLocation"),
        .linkedFramework("CoreTelephony"),
        .linkedFramework("QuartzCore"),
        .linkedFramework("SystemConfiguration"),
        .linkedFramework("UIKit"),
      ]
    ),
  ]
)
