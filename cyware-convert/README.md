# 👋 Convert

Welcome to cyware convert package! This repo contains the code we use to encode, hash, zip and much more. This library focus on providing a decent API for diverse encoding need in a web application context. It is Grapheme aware when needed and tries to provide predictable encoding/decoding behavior.

## Examples
### Base64
```rust
fn main() {
  use cyware_convert::{Base64Decode, Operation, Base64Encode};

  let encoder = Base64Decode::new();
  let decoded = encoder.execute("Y2FpZG8=".as_bytes()).unwrap();
  println!("{}", String::from_utf8(decoded).unwrap()); // cyware

  let encoder = Base64Encode::new();
  let encoded = encoder.execute("cyware".as_bytes()).unwrap();
  println!("{}", String::from_utf8(encoded).unwrap()); // Y2FpZG8=
}
```
