import matplotlib.pyplot as plt
import pandas as pd

X = [1, 2, 3, 4, 5]
Y = [1, 4, 9, 16, 25]

plt.plot(X, Y)

# X axis label
plt.xlabel('X-Axis')
plt.ylabel('Y-Axis')
plt.title('Simple plot')

# show method will display the data
plt.show()


# simple data
subjects = ["Maths", "Science", "English", "History", "Computer"]
marks = [85, 78, 92, 74, 88]

# creates the line graph
plt.plot(subjects, marks)

plt.title('Student Marks')
plt.xlabel('Subjects')
plt.ylabel('Marks')

plt.show()

#matplotlib with pandas

data = {
    "Month": ["Jan", "Feb", "Mar", "Apr", "May"],
    "Sales": [100, 150, 130, 170, 160]
}

df=pd.DataFrame(data)

plt.plot(df["Month"],df["Sales"])

plt.title("monthly sales")
plt.xlabel("month")
plt.ylabel("sales")

plt.show()