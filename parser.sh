#!/bin/sh

env | while IFS= read -r line
do
  name="${line%%=*}"
  eval "value=\$$name"
  case "$name" in 
    *"$contains"*)
      key=$(echo "$name" | sed -e "s/$contains//g")
      key=$(echo "$key" | tr '[:upper:]' '[:lower:]')
      key=$(echo "$key" | awk -F _ '{printf "%s", $1; for(i=2; i<=NF; i++) printf "%s", toupper(substr($i,1,1)) substr($i,2); print"";}')

      cat <<EOT >> environment.js
  window.$key = "$value";
EOT
      ;;
  esac
done

nginx -g 'daemon off;'
