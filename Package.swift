// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Charts",
    platforms: [
          .iOS(.v12),
          .tvOS(.v12),
          .macOS(.v10_12),
    ],
    products: [
        .library(
            name: "ChartsLegacy",
            targets: ["ChartsLegacy"]),
        .library(
            name: "ChartsDynamicLegacy",
            type: .dynamic,
            targets: ["ChartsLegacy"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "ChartsLegacy",
            dependencies: [.product(name: "Algorithms", package: "swift-algorithms")],
            path: "Source/Charts"
        )
    ],
    swiftLanguageVersions: [.v5]
)
