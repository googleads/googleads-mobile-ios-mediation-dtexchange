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
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "DTExchangeAdapterTarget",
      targets: ["DTExchangeAdapterTarget", "DTExchangeSDK"]
    )
  ],
  targets: [
    .target(
      name: "DTExchangeAdapterTarget",
      dependencies: [
        .target(name: "DTExchangeAdapter")
      ],
      path: "DTExchangeAdapterTarget"
    ),
    .binaryTarget(
      name: "DTExchangeAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/dtexchange/DTExchangeAdapter-8.3.8.0.zip",
      checksum: "57e9dabf2c1caf607e304b60efb9155c037a7725e96458ad02d01c90b28531fa"
    ),
    .binaryTarget(
      name: "DTExchangeSDK",
      url:
        "https://cdn2.inner-active.mobi/fmp-sdk/files/DTExchangeSDK-iOS-v8.3.8.zip",
      checksum: "683d7a00eb21f1ebc6b7800b78918d25c6193150dcb0e00743a47027d623f689"
    ),
  ]
)
