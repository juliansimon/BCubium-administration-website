#!/bin/bash

DIR_SCRIPTS=/var/www/html/webconfig/scripts


BITCOIN_SERVICE=$($DIR_SCRIPTS/bitcoin_status.sh | cut -b 1,2)
LND_SERVICE=$($DIR_SCRIPTS/lnd_status.sh | cut -b 1,2)
ELECTRUM_SERVICE=$($DIR_SCRIPTS/electrum_status.sh | cut -b 1,2)
ELECTRUM_ACTIVATED=$($DIR_SCRIPTS/electrum_activated.sh | cut -b 1,2)
BTCRPCEXPLORER_SERVICE=$($DIR_SCRIPTS/btcrpcexplorer_status.sh | cut -b 1,2)
RTL_SERVICE=$($DIR_SCRIPTS/rtl_status.sh | cut -b 1,2)
TOR_SERVICE=$($DIR_SCRIPTS/tor_status.sh | cut -b 1,2)
FIREWALL_SERVICE=$($DIR_SCRIPTS/firewall_status.sh | cut -b 1,2)
OPENVPN_SERVICE=$($DIR_SCRIPTS/openvpn_status.sh | cut -b 1,2)
OPENVPN_ACTIVATED=$($DIR_SCRIPTS/openvpn_activated.sh | cut -b 1,2)
WIREGUARD_SERVICE=$($DIR_SCRIPTS/wireguard_status.sh | cut -b 1,2)

echo "{\"bitcoin\":\"$BITCOIN_SERVICE\", \"lnd\":\"$LND_SERVICE\", \"electrum\":\"$ELECTRUM_SERVICE\", \"btcrpcexplorer\":\"$BTCRPCEXPLORER_SERVICE\", \"rtl\":\"$RTL_SERVICE\", \"tor\":\"$TOR_SERVICE\", \"firewall\":\"$FIREWALL_SERVICE\", \"openvpn\":\"$OPENVPN_SERVICE\", \"electrum_activated\":\"$ELECTRUM_ACTIVATED\", \"openvpn_activated\":\"$OPENVPN_ACTIVATED\", \"wireguard\":\"$WIREGUARD_SERVICE\"}"



