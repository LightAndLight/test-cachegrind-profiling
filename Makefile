./target/cachegrind/test-cachegrind-profiling: Cargo.lock Cargo.toml src/main.rs
	cargo build -Z unstable-options --profile cachegrind

cachegrind.out: ./target/cachegrind/test-cachegrind-profiling
	valgrind --tool=cachegrind --cachegrind-out-file=cachegrind.out --branch-sim=yes ./target/cachegrind/test-cachegrind-profiling
