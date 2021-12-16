// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Base62",
    products: [
        .library(name: "Base62", targets: ["Base62"])
    ],
    targets: [
        .target(name: "Base62"),
				.testTarget(name: "Base62Tests", dependencies: ["Base62"])
    ]
)
