// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ChartKit",
    platforms: [
          .iOS(.v12),
          .tvOS(.v12),
          .macOS(.v10_12),
    ],
    products: [
        .library(
            name: "ChartKit",
            targets: ["ChartKit"]),
        .library(
            name: "ChartKitDynamic",
            type: .dynamic,
            targets: ["ChartKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "ChartKit",
            dependencies: [.product(name: "Algorithms", package: "swift-algorithms")],
            path: "Source/Charts"
        )
    ],
    swiftLanguageVersions: [.v5]
)
