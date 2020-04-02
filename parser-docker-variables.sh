#!/usr/bin/env sh

# Parser Docker Variables for javascript
# MIT Licensed.
#
# Usage: parser-docker-variables [options] [pattern]
# Options:
#  -V, --version    Output version
#  -h, --help       This message.
#  --               End of options

PATTERN="$1";
VERSION="0.1.0"

print() {
  key=$1
  value=$2
  cat <<EOF
  window.$key = "$value";
EOF
}

usage() {
  cat <<EOF
  Usage: parser-docker-variables [options] [pattern]
  Options:
    -V, --version    Output version
    -h, --help       This message.
    --               End of options
EOF
}

while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do
  case $1 in
    -h | --help )
      usage
      exit
      ;;
    -v | --version )
      echo $VERSION
      exit
      ;;
  esac
  shift
done

env | while IFS= read -r line
do
  name="${line%%=*}"
  eval "value=\$$name"
  case "$name" in 
    *"$PATTERN"*)
      key="$name"
      key=$(echo "$key" | tr '[:upper:]' '[:lower:]')
      key=$(echo "$key" | awk -F _ '{printf "%s", $1; for(i=2; i<=NF; i++) printf "%s", toupper(substr($i,1,1)) substr($i,2); print"";}')

      if [ $key ]; then
        print "$key" "$value"
      fi
  esac
done
