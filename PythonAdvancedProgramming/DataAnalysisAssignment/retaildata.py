import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("retail_data.csv")

# Date to datetime
df["Date"] = pd.to_datetime(df["Date"])

# Revenue column
df["Revenue"] = df["Quantity"] * df["Price"]

# null values
print("Null Values:\n", df.isnull().sum())

# Drop nulls (if any)
df.dropna(inplace=True)


# 1. Highest revenue by region
region_revenue = df.groupby("Region")["Revenue"].sum().sort_values(ascending=False)
print("\nRevenue by Region:\n", region_revenue)

# 2. Monthly sales trend
df["Month"] = df["Date"].dt.to_period("M")
monthly_sales = df.groupby("Month")["Revenue"].sum()
print("\nMonthly Sales:\n", monthly_sales)

# 3. Best performing category
category_revenue = df.groupby("Category")["Revenue"].sum().sort_values(ascending=False)
print("\nRevenue by Category:\n", category_revenue)

# 4. Top 5 products
top_products = df.groupby("Product")["Revenue"].sum().sort_values(ascending=False).head(5)
print("\nTop 5 Products:\n", top_products)



# Bar chart  Revenue by Region
plt.figure()
region_revenue.plot(kind="bar")
plt.title("Revenue by Region")
plt.xlabel("Region")
plt.ylabel("Revenue")
plt.show()

# Line plot Monthly Revenue Trend
plt.figure()
monthly_sales.plot(kind="line")
plt.title("Monthly Revenue Trend")
plt.xlabel("Month")
plt.ylabel("Revenue")
plt.show()

# Pie chart  Category Contribution
plt.figure()
category_revenue.plot(kind="pie", autopct="%1.1f%%")
plt.title("Category Contribution")
plt.ylabel("")
plt.show()

# Horizontal bar  Top 5 Products
plt.figure()
top_products.plot(kind="barh")
plt.title("Top 5 Products by Revenue")
plt.xlabel("Revenue")
plt.ylabel("Product")
plt.show()