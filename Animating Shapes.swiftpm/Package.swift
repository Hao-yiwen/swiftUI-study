// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Animating Shapes",
    defaultLocalization: "en",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "Animating Shapes",
            targets: ["App"],
            teamIdentifier: "84F8R9TAQN",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .asset("AppIcon"),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "App",
            path: "App"
        )
    ]
)