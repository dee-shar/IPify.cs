#!/bin/bash

api="https://geo.ipify.org"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"

function set_api_key() {
	# 1 - api_key: (string): <api_key>
	api_key=$1
}

function get_ip_info() {
	# 1 - query: (string): <query - default: country>
	# 2 - ip_address: (string): <ip_address>
	curl --request GET \
		--url "$api/api/v2/${1:-country}/?apiKey=$api_key&ipAddress=$2" \
		--user-agent "$user_agent"
}

function get_account_balance() {
	# 1 - query: (string): <query - default: country>
	# 2 - ip_address: (string): <ip_address>
	curl --request GET \
		--url "$api/service/account-balance?apiKey=$api_key" \
		--user-agent "$user_agent"
}
