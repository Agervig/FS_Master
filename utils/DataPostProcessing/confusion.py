import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


conf_matrix = np.array([
    [34, 0, 0, 1, 0],
    [0, 2, 0, 0, 0],
    [0, 1, 0, 1, 0],
    [12, 0, 0, 14, 0],
    [5, 0, 0, 0, 0]  
])


classes = ["Blue", "Start", "Finish", "Yellow", "Nonexisting Cone"]

plt.figure(figsize=(10, 7))
sns.set(style="white", font_scale=1.4)


heatmap = sns.heatmap(conf_matrix, annot=True, fmt="d", cmap="Blues",
                      xticklabels=classes, yticklabels=classes, cbar=False)

# Enhance visualization
plt.xlabel("Predicted Label", fontsize=16, fontweight="bold", labelpad=10)
plt.ylabel("True Label", fontsize=16, fontweight="bold", labelpad=10)
#plt.title("Confusion Matrix of Cone Classification", fontsize=18, fontweight="bold", pad=20)
plt.savefig("confusion_matrix.png", format="png", dpi=300)

heatmap.set_xticklabels(heatmap.get_xmajorticklabels(), fontsize=14)
heatmap.set_yticklabels(heatmap.get_ymajorticklabels(), fontsize=14, rotation=0)


plt.tight_layout()
plt.show()
