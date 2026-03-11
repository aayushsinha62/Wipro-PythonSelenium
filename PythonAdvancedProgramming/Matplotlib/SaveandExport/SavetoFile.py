import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

# # X axis data
# x = np.array([1, 2, 3, 4])
#
# # Y axis data
# y = x**2
#
# plt.plot(x, y)
# plt.show()

# Line plot using pandas
data = {
    "Day": ["Mon", "Tue", "Wed", "Thu", "Fri"],
    "Steps": [4000, 5500, 7000, 6500, 8000]
}

df = pd.DataFrame(data)

df.plot(x="Day", y="Steps", kind="line")

plt.title("Daily Steps Count")
plt.xlabel("Day")
plt.ylabel("Steps")

#plt.show()