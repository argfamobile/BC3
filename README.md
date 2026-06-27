BitcoinIII Core
===============

https://bc3.network

For a ready-to-use binary version of the BitcoinIII Core software, see the
[latest release](https://github.com/argfamobile/BC3/releases/tag/v31.0.0).

What is BitcoinIII?
-------------------

BitcoinIII (BC3) is a nearly 1:1 re-launch of the Bitcoin protocol.

The only difference between BitcoinIII and Bitcoin is the block hash algorithm:
instead of SHA-256d (double SHA-256), BitcoinIII uses **SHA3-256t (triple
SHA3-256)** to produce the block header hash, activated at the fork (block
**30240**). Every other consensus rule is identical to Bitcoin.

BitcoinIII Core connects to the BitcoinIII peer-to-peer network to download and
fully validate blocks and transactions. It also includes a wallet and a
graphical interface.

About this release (v31.0.0)
----------------------------

This tree is the BitcoinIII consensus patch **rebased onto [Bitcoin Core
31.0](https://github.com/bitcoin/bitcoin/releases/tag/v31.0)**, bringing BC3 up
to date with every upstream Bitcoin Core security fix that the 29.x line is
missing (including CVE-2024-52911) -- while keeping consensus 100% intact and
interoperable with the existing network.

It was validated by syncing the live BC3 chain across the fork (block 30240,
SHA-256d -> SHA3-256t) with full validation, and it is 100% interoperable with
the existing `/Satoshi:29.1.x/` nodes.

Downloads
---------

From the [v31.0.0 release](https://github.com/argfamobile/BC3/releases/tag/v31.0.0):

- **Windows x64** -- native GUI wallet, self-contained and auto-connects to the
  network out of the box: `BitcoinIII-Core-v31.0.0-x86_64-win64-gui.zip`
- **Linux x86_64** -- GUI + node + CLI: `BitcoinIII-Core-v31.0.0-x86_64-linux-gnu.tar.gz`

Verify your download against `SHA512SUMS`. On Linux, the `bitcoinIII-qt` GUI
needs Qt6 installed; the daemon and CLI are standalone.

Building from source
--------------------

The two commits on top of the Bitcoin Core 31.0 base are the complete,
auditable BC3 patch. Build instructions are the same as upstream Bitcoin Core --
see the [doc folder](doc) (e.g. `doc/build-unix.md`, `doc/build-windows.md`).

License
-------

BitcoinIII Core is released under the terms of the MIT license. See
[COPYING](COPYING) or https://opensource.org/licenses/MIT.
