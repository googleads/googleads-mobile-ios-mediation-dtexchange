// swift-tools-version:5.3

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
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "DTExchangeAdapterTarget",
      targets: ["DTExchangeAdapterTarget", "DTExchangeSDK"]
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
      from: "13.0.0"
    )
  ],
  targets: [
    .target(
      name: "DTExchangeAdapterTarget",
      dependencies: [
        .target(name: "DTExchangeAdapter"),
        .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
      ],
      path: "DTExchangeAdapterTarget"
    ),
    .binaryTarget(
      name: "DTExchangeAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/dtexchange/DTExchangeAdapter-8.4.4.1.zip",
      checksum: "f9ac9ca90a8b234f5e2e7e32112b7b5cad89773d8ff873004cb8ede073480a40"
    ),
    .binaryTarget(
      name: "DTExchangeSDK",
      url:
        "https://cdn2.inner-active.mobi/fmp-sdk/files/DTExchangeSDK-iOS-v8.4.4.zip",
      checksum: "c436700a411c96736355219b2ddb1bd802eb5860c9ee73d09b2cfcdd63c77a53"
    ),
  ]
)
