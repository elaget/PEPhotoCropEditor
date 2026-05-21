// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "PEPhotoCropEditor",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "PEPhotoCropEditor",
            targets: ["PEPhotoCropEditor"]
        ),
    ],
    targets: [
        .target(
            name: "PEPhotoCropEditor",
            // path raíz para poder incluir tanto Lib/ como Resources/ — SPM no
            // permite referenciar recursos fuera del path del target.
            path: ".",
            exclude: [
                "DemoApp",
                "Movies",
                "Screenshots",
                "PEPhotoCropEditor.xcodeproj",
                "PEPhotoCropEditor.podspec",
                "README.md",
                "Rakefile",
                "LICENSE",
                "en.lproj",
                "ja.lproj",
            ],
            sources: ["Lib"],
            resources: [
                // .copy preserva el .bundle original intacto como subbundle,
                // manteniendo paridad estructural con CocoaPods. El bundle SPM
                // contiene PEPhotoCropEditor.bundle/...
                .copy("Resources/PEPhotoCropEditor.bundle"),
            ],
            publicHeadersPath: "Lib",
            linkerSettings: [
                .linkedFramework("QuartzCore"),
                .linkedFramework("AVFoundation"),
            ]
        ),
    ]
)
