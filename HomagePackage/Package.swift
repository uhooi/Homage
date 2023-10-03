// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "HomagePackage",
    defaultLocalization: "ja",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
    ],
    products: [
        .library(name: "Production", targets: ["ProductionApp"]),
    ],
    targets: [

        // MARK: App layer

        .target(
            name: "ProductionApp",
            dependencies: [],
            path: "./Sources/Apps/Production"),
    ]
)
