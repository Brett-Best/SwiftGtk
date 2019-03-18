// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Gtk",
    products: [
        .library(name: "Gtk", targets: ["Gtk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Brett-Best/CGtk.git", .branch("bb-pkg-dev")),
        .package(url: "https://github.com/Brett-Best/SwiftAtk.git", .branch("bb-pkg-dev")),
        .package(url: "https://github.com/Brett-Best/SwiftGdk.git", .branch("bb-pkg-dev")),
    ],
    targets: [
        .target(name: "Gtk", dependencies: ["Gdk", "Atk"]),
        .testTarget(name: "GtkTests", dependencies: ["Gtk"]),
    ]
)
