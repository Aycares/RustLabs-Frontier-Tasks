#!/bin/bash
mkdir -p /logs/verifier
python3 /workspace/distances.py
if [ -f "/workspace/output.npy" ]; then
    echo "1.0" > /logs/verifier/reward.txt
    exit 0
fi
echo "0.0" > /logs/verifier/reward.txt