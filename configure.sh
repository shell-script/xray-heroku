#!/bin/sh

cat << EOF > /config.json
{
	"inbounds": [{
		"port": $PORT,
		"listen": "127.0.0.1",
		"protocol": "vless",
		"settings": {
			"clients": [{
				"id": "$UUID"
			}],
			"decryption": "none"
		},
		"streamSettings": {
			"network": "ws",
			"wsSettings": {
				"path": "$WSPATH"
			}
		}
	}],

	"outbounds": [{
		"protocol": "freedom"
	}]
}
EOF

/xray run -c /config.json
