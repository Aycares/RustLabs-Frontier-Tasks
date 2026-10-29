#!/bin/bash
mkdir -p /logs/verifier
if [ -f "/workspace/flag.txt" ]; then
    if grep -q "500000" "/workspace/flag.txt"; then
        echo "1.0" > /logs/verifier/reward.txt
        exit 0
    fi
fi
echo "0.0" > /logs/verifier/reward.txt