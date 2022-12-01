// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "grabgif",
    platforms: [.macOS(.v10_15)],
    targets: [.executableTarget(name: "grabgif", dependencies: [])]
)
