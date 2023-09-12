import numpy as np

timestamps = np.array([1, 1.5, 2, 3, 4.5, 5, 7])  # Convert your list to a NumPy array
time_deltas = np.diff(timestamps)

print(time_deltas)