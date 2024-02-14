#!/usr/bin/env sh

## musl build
# cargo zigbuild --target x86_64-unknown-linux-musl --release
# cp -fv ./target/x86_64-unknown-linux-musl/release/twitch-hls-client ~/.local/bin/cargo/bin/

## normal build
# cargo b --release
# cp -fv ./target/release/twitch-hls-client ~/.local/bin/cargo/bin/

## std build
cargo build -Z build-std=std,panic_abort -Z build-std-features= --release --target x86_64-unknown-linux-gnu
cp -fv ./target/x86_64-unknown-linux-gnu/release/twitch-hls-client ~/.local/bin/cargo/bin/
