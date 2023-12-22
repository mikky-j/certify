# Certify

Certify is a platform that leverages the [Internet Computer Protocol](https://internetcomputer.org/) (ICP) to securely store user certifications along with providing an intuitive user interface for discovering and viewing them.

## Why Certify? 🤔

Certify aims to solve the problem of ensuring the authenticity of user certifications. We aim to store certifications such as academic diplomas and MOOC micro-credentials in order to reduce fraudulent claims.

An area we're particularly focused on is easing the process of verification -- currently verification of a certificate involves long-winded communication between pre-trusted parties. There's currently no reasonable, secure way to perform these actions in a trustless environment.

We solve this by utilising technolgies provded by the ICP for a revolutionary approach to this, check out [how it works](#how-it-works).

## Features:

Certify offers the following features:

- **Certificate Storage**: It enables users to store their various certificates on the Internet Computer.

- **Certificate Discovery**: It enables authorised users (such as employers) to view other people's verified certificates using their [Internet Identity](https://identity.ic0.app/).

### How it works:

Certify uses various features provded only by the ICP for its essential operations. Some of it are:

- **ICP Storage**: We store certicates as Non-Fungible Tokens (NFTs) on the Internet Computer. Certify implements a custom version of the [DIP721 specification](https://github.com/Psychedelic/DIP721/blob/develop/spec.md) in order to effectively store a user's certficates.
- **Search Functionality**: In our backend canister, we implement various endpoints that helps us to effectively search for certificates and retrieve the associated data with a certificate.

## Usage:

Connect to our [backend canister](https://a4gq6-oaaaa-aaaab-qaa4q-cai.raw.icp0.io/?id=ggudy-cyaaa-aaaan-qlgwq-cai)and login with an Internet Identity and have fun 😁.

> [!NOTE]
> Minting was limited to the canister administators in this MPV.
>
> Bringing minting to the frontend is a work in progress.

## Building locally:

1.  Install the development dependencies:

    - Rust toolchain (minimum version: 1.73.0): Install [Rustup](https://rustup.rs) and follow the instructions.
    - DFINITY command-line execution environment: Follow the [installation instructions](https://internetcomputer.org/docs/current/developer-docs/setup/install/#installing-the-ic-sdk-1).
    - Just: Follow the [installation instructions](https://github.com/casey/just#installation).

    You can check if these are installed correctly by running `cargo --version` & `dfx --version` at a terminal.

2.  Clone the repository using `git`:

    ```sh
    $ git clone https://github.com/mikky-j/certify.git
    ```

3.  Change directories into the project folder:

    ```sh
    $ cd certify
    ```

4.  Add the `wasm32-unknown-unknown` target along with the `candid-extractor` package:

    ```sh
    $ just prepare
    ```

5.  Start a local canister execution environment and deploy the canister:

    ```sh
    $ just
    ```

6.  Navigate to the link [here](https://a4gq6-oaaaa-aaaab-qaa4q-cai.raw.icp0.io/?id=ggudy-cyaaa-aaaan-qlgwq-cai).
