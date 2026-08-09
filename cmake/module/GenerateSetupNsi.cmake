# Copyright (c) 2023-present The Bitcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or https://opensource.org/license/mit/.

# BC3: the names below serve DOUBLE duty - they are the name the .nsi looks for in
# build/release/ AND the name each file ends up installed as.
# add_windows_deploy_target() (Maintenance.cmake) strips to those very names, so
# both files have to move together or the build fails with
# "File: failed opening file".
function(generate_setup_nsi)
  set(abs_top_srcdir ${PROJECT_SOURCE_DIR})
  set(abs_top_builddir ${PROJECT_BINARY_DIR})
  set(CLIENT_URL ${PROJECT_HOMEPAGE_URL})
  # CLIENT_TARNAME is the HKCR key of the URI protocol. With upstream's "bitcoin"
  # the installer would hijack the system's bitcoin: scheme, and its uninstaller
  # would DeleteRegKey HKCR "bitcoin", wiping a real Bitcoin Core association.
  set(CLIENT_TARNAME "bitcoinIII")
  set(BITCOIN_WRAPPER_NAME "bitcoinIII")
  set(BITCOIN_GUI_NAME "bitcoinIII-qt")
  set(BITCOIN_DAEMON_NAME "bitcoinIIid")
  set(BITCOIN_CLI_NAME "bitcoinIII-cli")
  set(BITCOIN_TX_NAME "bitcoinIII-tx")
  set(BITCOIN_WALLET_TOOL_NAME "bitcoinIII-wallet")
  # BC3: util IS installed (it ships in our tarballs) and the test suite is NOT -
  # upstream bundles it and it is ~28 MB of no use to a wallet user.
  set(BITCOIN_UTIL_NAME "bitcoinIII-util")
  set(EXEEXT ${CMAKE_EXECUTABLE_SUFFIX})
  configure_file(${PROJECT_SOURCE_DIR}/share/setup.nsi.in ${PROJECT_BINARY_DIR}/bitcoinIII-win64-setup.nsi USE_SOURCE_PERMISSIONS @ONLY)
endfunction()
