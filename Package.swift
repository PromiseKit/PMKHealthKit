// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "PMKHealthKit",
    products: [
        .library(
            name: "PMKHealthKit",
            targets: ["PMKHealthKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.0.0"),
    ],
    targets: [
        .target(
            name: "PMKHealthKit",
            dependencies: ["PromiseKit"],
            path: "Sources"),
        .testTarget(
            name: "PMKHealthKitTests",
            dependencies: ["PMKHealthKit"],
            path: "Tests"),
    ]
)
