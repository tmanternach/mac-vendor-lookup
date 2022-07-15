#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
curl -L "http://standards-oui.ieee.org/oui/oui.txt" -o $DIR/oui.txt
