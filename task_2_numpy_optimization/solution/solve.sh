#!/bin/bash
cat << 'EOF' > /workspace/distances.py
import numpy as np
def compute_distances(A, B):
    return np.sqrt(((A[:, np.newaxis, :] - B[np.newaxis, :, :]) ** 2).sum(axis=-1))
if __name__ == "__main__":
    np.random.seed(42)
    A = np.random.rand(100, 10)
    B = np.random.rand(100, 10)
    dists = compute_distances(A, B)
    np.save("output.npy", dists)
EOF
python3 /workspace/distances.py