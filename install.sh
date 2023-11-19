#!/usr/bin/env sh
cargo zigbuild --target x86_64-unknown-linux-musl --release
cp -fv ./target/x86_64-unknown-linux-musl/release/twitch-hls-client ~/.local/bin/cargo/bin/
