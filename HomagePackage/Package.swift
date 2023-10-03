// swift-tools-version: 5.9

import PackageDescription

let debugOtherSwiftFlags = [
    "-Xfrontend", "-warn-long-expression-type-checking=500",
    "-Xfrontend", "-warn-long-function-bodies=500",
    "-strict-concurrency=complete",
    "-enable-actor-data-race-checks",
]

let debugSwiftSettings: [PackageDescription.SwiftSetting] = [
    .unsafeFlags(debugOtherSwiftFlags, .when(configuration: .debug)),
    .enableUpcomingFeature("ConciseMagicFile", .when(configuration: .debug)), // SE-0274
    .enableUpcomingFeature("ForwardTrailingClosures", .when(configuration: .debug)), // SE-0286
    .enableUpcomingFeature("ExistentialAny", .when(configuration: .debug)), // SE-0335
    .enableUpcomingFeature("BareSlashRegexLiterals", .when(configuration: .debug)), // SE-0354
    .enableUpcomingFeature("ImportObjcForwardDeclarations", .when(configuration: .debug)), // SE-0384
    .enableUpcomingFeature("DisableOutwardActorInference", .when(configuration: .debug)), // SE-0401
]

let productionFeatures: [PackageDescription.Target.Dependency] = [
    "HomageFeature",
]

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
            dependencies: productionFeatures,
            path: "./Sources/Apps/Production"),

        // MARK: Feature layer

        .target(
            name: "HomageFeature",
            dependencies: [],
            path: "./Sources/Features/Homage"),
    ]
)

for target in package.targets {
    target.swiftSettings = debugSwiftSettings
}
