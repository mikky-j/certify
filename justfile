deploy:
    dfx stop
    dfx start --background 
    dfx deploy

clean:
    dfx stop
    dfx start --background --clean

redeploy: clean
    dfx deploy

prepare:
    rustup target add wasm32-unknown-unknown
    cargo install candid-extractor

gen:
    cargo build --release
    candid-extractor target/wasm32-unknown-unknown/release/certify_backend.wasm > src/certify_backend/certify_backend.did
