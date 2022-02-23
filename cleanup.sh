#!/bin/bash
/bin/mix phx.digest.clean
export SECRET_KEY_BASE=MHS39QNfg869+1QfVPRrIluoMV193bwnod5BpSD0xPcNO9h4odVU4Hgtdi6GcghH
export ETHEREUM_JSONRPC_HTTP_URL=http://64.227.190.26/rpc
export COIN=BTEX
export SUBNETWORK=Mainnet
export NETWORK=BTEX
export DATABASE_URL=postgresql://shivam:Laravel@localhost:5432/blockscout
export LOGO=/images/EXP-BL.png
export LOGO_FOOTER=/images/EXP-WT.png
export COIN_NAME=BTEX
export SHOW_MAINTENANCE_ALERT=true
export MAINTENANCE_ALERT_MESSAGE="Site is on Maintainenace"
export SHOW_MARQUE_ALERT=true
export MARQUE_ALERT_MESSAGE="Welcome to BitFlash Explorer"
export SHOW_TXS_CHART=true
export SHOW_PRICE_CHART=true
export ENABLE_TXS_STATS=true
export DISABLE_KNOWN_TOKENS=true
export DISABLE_EXCHANGE_RATES=true
export NETWORK_PATH=/
export JSON_RPC=https://64.227.190.26/rpc
export ETHEREUM_JSONRPC_WS_URL=ws://64.227.190.26/ws
export CHAIN_ID=2102
/bin/mix do ecto.create, ecto.migrate
/bin/mix phx.digest
/bin/mix phx.server