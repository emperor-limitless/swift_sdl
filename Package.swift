// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SDL",
    products: [
        .library(
            name: "swift_sdl",
            type: .dynamic,
            targets: ["SDL"]),
    ],
    dependencies: [
    ],
    targets: [
        .systemLibrary (
            name: "CSDLWindows"),
        .systemLibrary (
            name: "CSDL"),
        .target(
            name: "SDL",
            dependencies: [
                "CSDLWindows",
                "CSDL",
            ]),
    ]
)
