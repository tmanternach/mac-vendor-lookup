#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
curl -o $DIR/oui.txt http://standards-oui.ieee.org/oui/oui.txt
