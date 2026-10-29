import numpy as np

def compute_distances(A, B):
    rows_A = A.shape[0]
    rows_B = B.shape[0]
    dists = np.zeros((rows_A, rows_B))
    for i in range(rows_A):
        for j in range(rows_B):
            dists[i, j] = np.sqrt(np.sum((A[i] - B[j])**2))
    return dists

if __name__ == "__main__":
    np.random.seed(42)
    A = np.random.rand(100, 10)
    B = np.random.rand(100, 10)
    dists = compute_distances(A, B)
    np.save("output.npy", dists)