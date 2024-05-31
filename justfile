wasm-package-path := "./wasm-package"
wasm-crate := "./convert"

default:
  @just --list

build-convert-release:
  wasm-pack build --out-name index --out-dir ../{{wasm-package-path}} --target=bundler ./{{wasm-crate}} --scope cyware

build-wasm-dev:
  wasm-pack build --out-name index --out-dir ../{{wasm-package-path}} --target=bundler ./{{wasm-crate}} --dev

wasm-tests:
  yarn replace-in-file "/\"module\":/" "\"type\": \"module\", \"main\":" "{{wasm-package-path}}/package.json" --isRegex
  yarn prettier --write "{{wasm-package-path}}/package.json"
  cd ./web-tests && yarn test

clippy:
  cargo clippy -p cyware-convert
  cargo clippy -p convert --target wasm32-unknown-unknown

format:
  cargo +nightly fmt

format-check:
  cargo +nightly fmt --check

test:
  cargo test -p cyware-convert
  just build-wasm-dev
  just wasm-tests

coverage:
  cargo test -p cyware-convert
  just build-wasm-dev
  just wasm-tests

lcov:
  cargo llvm-cov -p cyware-convert --ignore-filename-regex errors --lcov --output-path lcov.info
