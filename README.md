[![Tests](https://github.com/cyware/convert/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/cyware/convert/actions/workflows/tests.yml?query=branch%3Amain)
[![codecov](https://codecov.io/gh/cyware/convert/branch/main/graph/badge.svg?token=G3HA8K9IIX)](https://codecov.io/gh/cyware/convert)
# 👋 Welcome

Welcome to cyware convert packages! This repo contains the code we use to encode, hash, zip and much more.
The core logic is written in cyware/convert crate. The javascript binding are provided by cyware-convert and publish as an npm package.  

## What you will need to build it 🛠️
- [wasm-pack](https://rustwasm.github.io/wasm-pack/)
- [rust](https://www.rust-lang.org/tools/install)
- wasm-opt `cargo install wasm-opt`
- just `cargo install just`
- llvm-cov `cargo install cargo-llvm-cov`
