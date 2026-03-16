#!/bin/bash
set -e
OK=$(echo ruok | nc 127.0.0.1 2181)
[ "$OK" = "imok" ]
