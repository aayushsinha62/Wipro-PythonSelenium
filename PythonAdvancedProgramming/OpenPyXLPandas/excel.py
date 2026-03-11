import pandas as pd

# writing to excel
data = {
    "Name": ["Ram", "Ravi", "Sita"],
    "Age": [20, 21, 19],
    "Marks": [85, 90, 78]
}

df = pd.DataFrame(data)
df.to_excel("excel_writer_output.xlsx", index=False)

# read a specific column
df = pd.read_excel("excel_writer_output.xlsx", usecols=["Name"])
print(df)

# Writing Multiple Sheets
data1 = {
    "Product": ["Laptop", "Phone"],
    "Sales": [10, 20]
}

data2 = {
    "City": ["Delhi", "Mumbai"],
    "Customers": [200, 150]
}

df1 = pd.DataFrame(data1)
df2 = pd.DataFrame(data2)

with pd.ExcelWriter("report.xlsx", engine="openpyxl") as writer:
    df1.to_excel(writer, sheet_name="Sales", index=False)
    df2.to_excel(writer, sheet_name="Customers", index=False)