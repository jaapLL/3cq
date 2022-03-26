#!/bin/sh

# prepare 3cqsbot configuration
cp config.ini.example config.ini

# General
sed -i "s/debug = false$/debug = $DEBUG/" config.ini

# Telegram settings
sed -i "s/api_id =.*/api_id = $TG_ID/" config.ini
sed -i "s/api_hash =.*/api_hash = $TG_HASH/" config.ini
sed -i "s|sessionfile = .*|sessionfile = $TG_SESSIONFILE|" config.ini

# 3Commas settings
sed -i "s/key =.*/key = $API_KEY/" config.ini
sed -i "s/secret =.*/secret = $API_SECRET/" config.ini

# DCABOT settings
sed -i "s/prefix = .*/prefix = $DCABOT_PREFIX/" config.ini
sed -i "s/subprefix = .*/subprefix = $DCABOT_SUBPREFIX/" config.ini
sed -i "s/suffix = .*/suffix = $DCABOT_SUFFIX/" config.ini
sed -i "s/tp = .*/tp = $DCABOT_TP/" config.ini
sed -i "s/bo = .*/bo = $DCABOT_BO/" config.ini
sed -i "s/so = .*/so = $DCABOT_SO/" config.ini
sed -i "s/^os = .*/os = $DCABOT_OS/" config.ini
sed -i "s/ss = .*/ss = $DCABOT_SS/" config.ini
sed -i "s/sos = .*/sos = $DCABOT_SOS/" config.ini
sed -i "s/mad = .*/mad = $DCABOT_MAD/" config.ini
sed -i "s/max = .*/max = $MAX/" config.ini
sed -i "s/mstc = .*/mstc = $DCABOT_MSTC/" config.ini
sed -i "s/sdsp = .*/sdsp = $DCABOT_SDSP/" config.ini
sed -i "s/single = .*/single = $DCABOT_SINGLE/" config.ini
sed -i "s/single_count = .*/single_count = $DCABOT_SINGLE_COUNT/" config.ini
sed -i "s/btc_min_vol = .*/btc_min_vol = $DCABOT_BTC_MIN_VOL/" config.ini

# General settings
sed -i "s/market = .*/market = $MARKET/" config.ini
sed -i "s/trade_mode = .*/trade_mode = $TRADE_MODE/" config.ini
sed -i "s/account_name = .*/account_name = $ACCOUNT/" config.ini
sed -i "s/symrank_limit_min = .*/symrank_limit_min = $SYMRANK_LIMIT_MIN/" config.ini
sed -i "s/symrank_limit_max = .*/symrank_limit_max = $SYMRANK_LIMIT_MAX/" config.ini
sed -i "s/volatility_limit_min = .*/volatility_limit_min = $VOLATILITY_LIMIT_MIN/" config.ini
sed -i "s/volatility_limit_max = .*/volatility_limit_max = $VOLATILITY_LIMIT_MAX/" config.ini
sed -i "s/price_action_limit_min = .*/price_action_limit_min = $PRICE_ACTION_LIMIT_MIN/" config.ini
sed -i "s/price_action_limit_max = .*/price_action_limit_max = $PRICE_ACTION_LIMIT_MAX/" config.ini
sed -i "s/topcoin_limit = .*/topcoin_limit = $TOPCOIN_LIMIT/" config.ini
sed -i "s/deal_mode = .*/deal_mode = $DEAL_MODE/" config.ini
sed -i "s/trailing = .*/trailing = $TRAILING/" config.ini
sed -i "s/trailing_deviation = .*/trailing_deviation = $TRAILING_DEVIATION/" config.ini
sed -i "s/limit_initial_pairs = .*/limit_initial_pairs = $LIMIT_INIT_PAIRS/" config.ini
sed -i "s/btc_pulse = .*/btc_pulse = $BTC_PULSE/" config.ini
sed -i "s/token_denylist = .*/token_denylist = $DENYLIST/" config.ini

python3 -u 3cqsbot.py
