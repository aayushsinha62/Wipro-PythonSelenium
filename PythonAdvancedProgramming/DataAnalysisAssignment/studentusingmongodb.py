import pandas as pd
import matplotlib.pyplot as plt
from pymongo import MongoClient

client = MongoClient("mongodb://localhost:27017/")
db = client["student_project"]


student_collection = db["student_collection"]
student_data = list(student_collection.find())

df2 = pd.DataFrame(student_data)

if "_id" in df2.columns:
    df2.drop("_id", axis=1, inplace=True)

# ----- Feature Engineering -----
df2["Average_Marks"] = df2[["Math", "Science", "English"]].mean(axis=1)
df2["Result"] = df2["Average_Marks"].apply(lambda x: "Pass" if x >= 40 else "Fail")

# ----- Analysis -----
avg_scores = df2[["Math", "Science", "English"]].mean()
correlation = df2["Attendance"].corr(df2["Average_Marks"])
gender_performance = df2.groupby("Gender")["Average_Marks"].mean()
result_counts = df2["Result"].value_counts()

# ----- Visualizations -----

plt.figure()
avg_scores.plot(kind="bar")
plt.title("Average Subject Scores")
plt.show()

plt.figure()
plt.scatter(df2["Attendance"], df2["Average_Marks"])
plt.title("Attendance vs Average Marks")
plt.show()

df2.boxplot(column="Average_Marks", by="Gender")
plt.title("Marks Distribution by Gender")
plt.suptitle("")
plt.show()

plt.figure()
result_counts.plot(kind="pie", autopct="%1.1f%%")
plt.title("Pass vs Fail")
plt.ylabel("")
plt.show()