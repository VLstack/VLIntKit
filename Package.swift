// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "VLIntKit",
                      defaultLocalization: "en",
                      platforms: [ .iOS(.v17) ],
                      products:
                      [
                       .library(name: "VLIntKit",
                                targets: [ "VLIntKit" ])
                      ],
                      dependencies:
                      [
                       .package(url: "https://github.com/VLstack/VLBundleKit", from: "1.4.0")
                      ],
                      targets:
                      [
                       .target(name: "VLIntKit",
                               dependencies: [ "VLBundleKit" ],
                               resources: [ .process("Resources") ])
                      ])
