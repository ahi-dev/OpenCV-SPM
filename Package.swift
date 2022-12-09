// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AHIOpenCV",
    platforms: [
        .macOS(.v10_13), .iOS(.v11), .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "AHIOpenCV",
            targets: ["opencv2"]),
    ],
    targets: [
        .binaryTarget(name: "opencv2",
                      url: "https://github.com/ahi-dev/OpenCV-SPM/releases/download/4.5.1/opencv2.xcframework.zip",
                      checksum: "283d420f760584b903f71d765237473a2fe59d377d7a0b89bec3bd715c612a08"),
    ],
    cxxLanguageStandard: .cxx11
)
