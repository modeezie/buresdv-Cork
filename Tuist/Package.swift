// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings: PackageSettings = .init(
        // Customize the product types for specific package product
        productTypes: [
            "LaunchAtLogin": .staticFramework,
            "DavidFoundation": .staticFramework,
            "ButtonKit": .staticFramework
        ],
        // FORCE OVERRIDE ALL EXTERNAL MODULE TARGET VALUES DIRECTLY
        targetSettings: [
            .all: .settings(
                base: [
                    "MACOSX_DEPLOYMENT_TARGET": "14.0"
                ]
            )
        ]
    )
#endif

let package = Package(
    name: "Cork",
    dependencies: [
        .package(url: "https://github.com", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com", .upToNextMajor(from: "9.0.2")),
        .package(url: "https://github.com", .upToNextMajor(from: "2.0.1")),
        .package(url: "https://github.com", .upToNextMinor(from: "1.2.1")),
        .package(url: "https://github.com", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com", .upToNextMajor(from: "0.6.1")),
        .package(url: "https://github.com", .upToNextMajor(from: "0.56.1")),
        .package(url: "https://github.com", branch: "develop"),
        .package(url: "https://github.com", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "Lint",
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin"),
            ]
        ),
    ]
)
