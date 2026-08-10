// swift-tools-version:5.6

// Copyright 2025 Google LLC.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "DTExchangeAdapter",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "DTExchangeAdapterTarget",
      targets: ["DTExchangeAdapterTarget"]
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git",
      exact: "8.4.10"
    ),
    .package(
      url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
      from: "13.3.0"
    ),
  ],
  targets: [
    .target(
      name: "DTExchangeAdapterTarget",
      dependencies: [
        .target(name: "DTExchangeAdapter"),
        .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM"),
        .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
      ],
      path: "DTExchangeAdapterTarget"
    ),
    .binaryTarget(
      name: "DTExchangeAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/dtexchange/DTExchangeAdapter-8.4.10.0.zip",
      checksum: "ccfee362eeedc67fea2b315cecb8c5f6ba15ac5df793117ee8cfc649dd6fa383"
    ),
  ]
)
