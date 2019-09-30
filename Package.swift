// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftKeychainWrapper",
  platforms: [
    .macOS(.v10_10),
    .iOS(.v8)
  ],
  products: [
    .library(
      name: "SwiftKeychainWrapper",
      targets: ["SwiftKeychainWrapper"]
    ),
  ],
  targets: [
    .target(
      name: "SwiftKeychainWrapper",
      path: ".",
      sources: ["SwiftKeychainWrapper"]
    ),
    .testTarget(
      name: "SwiftKeychainWrapperTests",
      dependencies: ["SwiftKeychainWrapper"],
      path: ".",
      sources: ["SwiftKeychainWrapperTests"]
    )
  ]
)