#!/bin/bash

# asking root permission
[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

