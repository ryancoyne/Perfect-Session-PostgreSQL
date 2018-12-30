// swift-tools-version:4.0

import PackageDescription
let package = Package(
    name: "PerfectSessionPostgreSQL",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PerfectSessionPostgreSQL",
            targets: ["PerfectSessionPostgreSQL"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/ryancoyne/Perfect-Session.git",
            from: "4.0.0"),
        .package(
            url: "https://github.com/ryancoyne/Perfect-PostgreSQL.git",
            from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "PerfectSessionPostgreSQL",
            dependencies: ["PerfectSession", "PerfectPostgreSQL"],
            path: "Sources"
        ),
    ]
)
