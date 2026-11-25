// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "TaurusxIronSourceAdapter",
    platforms: [.iOS("12.0")],

    products: [
        .library(
            name: "TaurusxIronSourceAdapter",
            targets: ["TaurusxIronSourceAdapterTarget"]
        )
    ],

    dependencies: [
        .package(
            url: "https://github.com/lee-tax/spm_test.git",
            exact: "1.19.2"
        ),
        .package(
            url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package.git",
            exact: "9.8.0"
        )
    ],

    targets: [
        .target(
            name: "TaurusxIronSourceAdapterTarget",
            dependencies: [
                .target(name: "TaxIronSourceAdapter"),
                .product(
                    name: "TaurusxAdsSDK",
                    package: "spm_test"
                ),
                .product(
                    name: "UnityMediationSDK",
                    package: "LevelPlay-Swift-Package"
                )
            ],
            path: "TaurusxIronSourceAdapterTarget"
        ),
        .binaryTarget(
            name: "TaxIronSourceAdapter",
            url: "https://github.com/lee-tax/ironsource-swift-package-test/releases/download/1.0.0/TaxIronSourceAdapter.xcframework.zip",
            checksum: "51ea71cdfb4529201b1bcfa72cbec6cbd9eb5937b21678da481a336fa4e48810"
        )
    ]
)
