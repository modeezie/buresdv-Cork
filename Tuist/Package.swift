// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

        let packageSettings: PackageSettings = .init(
        productTypes: [
            "LaunchAtLogin": .staticFramework,
            "DavidFoundation": .staticFramework,
            "ButtonKit": .staticFramework
        ],
        targetSettings: [
            "SwiftSyntax": .settings(base: ["MACOSX_DEPLOYMENT_TARGET": "14.0"]),
            "SwiftSyntaxMacros": .settings(base: ["MACOSX_DEPLOYMENT_TARGET": "14.0"]),
            "SwiftCompilerPluginMessageHandling": .settings(base: ["MACOSX_DEPLOYMENT_TARGET": "14.0"]),
            "CustomDump": .settings(base: ["MACOSX_DEPLOYMENT_TARGET": "14.0"])
        ]
    )

                ]
            )
        ]
    )
#endif

let package = Package(
    name: "Cork",
    dependencies: [
        .package(url: "https://github.com/sindresorhus/LaunchAtLogin-Modern", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/sindresorhus/Defaults", .upToNextMajor(from: "9.0.2")),
        .package(url: "https://github.com/buresdv/DavidFoundation", .upToNextMajor(from: "2.0.1")),
        .package(url: "https://github.com/buresdv/BetterProgress", .upToNextMinor(from: "1.2.1")),
        .package(url: "https://github.com/buresdv/ApplicationInspector", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/Dean151/ButtonKit", .upToNextMajor(from: "0.6.1")),
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", .upToNextMajor(from: "0.56.1")),
        .package(url: "https://github.com/hmlongco/Factory", branch: "develop"),
        .package(url: "https://github.com/pointfreeco/swift-navigation", from: "2.0.0")
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
