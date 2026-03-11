
import pandas as pd
from matplotlib import pyplot as plt

df2 = pd.read_csv("student_data.csv")

# Create Average Marks
df2["Average_Marks"] = df2[["Math", "Science", "English"]].mean(axis=1)

# Create Result column
df2["Result"] = df2["Average_Marks"].apply(lambda x: "Pass" if x >= 40 else "Fail")

print(df2.head())


# Average score per subject
avg_scores = df2[["Math", "Science", "English"]].mean()
print("\nAverage Subject Scores:\n", avg_scores)

# Correlation between attendance and performance
correlation = df2["Attendance"].corr(df2["Average_Marks"])
print("\nAttendance vs Performance Correlation:", correlation)

# Performance by gender
gender_performance = df2.groupby("Gender")["Average_Marks"].mean()
print("\nPerformance by Gender:\n", gender_performance)

# Pass vs Fail count
result_counts = df2["Result"].value_counts()
print("\nPass vs Fail:\n", result_counts)


# Bar chart Average Subject Scores
plt.figure()
avg_scores.plot(kind="bar")
plt.title("Average Subject Scores")
plt.ylabel("Marks")
plt.show()

# Scatter plot Attendance vs Average Marks
plt.figure()
plt.scatter(df2["Attendance"], df2["Average_Marks"])
plt.title("Attendance vs Average Marks")
plt.xlabel("Attendance")
plt.ylabel("Average Marks")
plt.show()

# Boxplot  Marks Distribution by Gender
df2.boxplot(column="Average_Marks", by="Gender")
plt.title("Marks Distribution by Gender")
plt.suptitle("")
plt.ylabel("Average Marks")
plt.show()

# Pie chart  Pass vs Fail
plt.figure()
result_counts.plot(kind="pie", autopct="%1.1f%%")
plt.title("Pass vs Fail Distribution")
plt.ylabel("")
plt.show()