.PHONY: all musl_install normal_install std_install

all: std_install

musl_install:
	cargo zigbuild --target x86_64-unknown-linux-musl --release
	cp -f ./target/x86_64-unknown-linux-musl/release/twitch-hls-client ~/.local/bin/cargo/bin/

normal_install:
	cargo b --release
	cp -f ./target/release/twitch-hls-client ~/.local/bin/cargo/bin/

std_install:
	cargo build -Z build-std=std,panic_abort -Z build-std-features= --release --target x86_64-unknown-linux-gnu
	cp -f ./target/x86_64-unknown-linux-gnu/release/twitch-hls-client ~/.local/bin/cargo/bin/
