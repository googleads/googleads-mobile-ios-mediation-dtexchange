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
      targets: ["DTExchangeAdapterTarget"]
    )
  ],
  targets: [
    .target(
      name: "DTExchangeAdapterTarget",
      dependencies: [
        .target(name: "Adapter")
      ],
      path: "DTExchangeAdapterTarget"
    ),
    .binaryTarget(
      name: "Adapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/dtexchange/DTExchangeAdapter-8.3.8.0.zip",
      checksum: ""
    ),
  ]
)
