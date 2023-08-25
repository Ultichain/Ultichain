#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.ultichain/ultichaind.pid file instead
export LC_ALL=C

ultichain_pid=$(<~/.ultichain/testnet3/ultichaind.pid)
sudo gdb -batch -ex "source debug.gdb" ultichaind ${ultichain_pid}
