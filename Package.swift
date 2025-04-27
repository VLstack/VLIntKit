// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "VLIntKit",
                      platforms: [ .iOS(.v17) ],
                      products:
                      [
                       .library(name: "VLIntKit",
                                targets: [ "VLIntKit" ])
                      ],
                      targets:
                      [
                       .target(name: "VLIntKit")
                      ])
