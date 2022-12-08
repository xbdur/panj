#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6c728369-02bf-47d7-8de4-a1496d670c12"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

