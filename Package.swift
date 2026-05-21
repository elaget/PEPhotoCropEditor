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
            path: "Lib",
            resources: [
                .process("../Resources/PEPhotoCropEditor.bundle"),
            ],
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("QuartzCore"),
                .linkedFramework("AVFoundation"),
            ]
        ),
    ]
)
