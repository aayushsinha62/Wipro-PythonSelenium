import pandas as pd
import matplotlib.pyplot as plt
from sqlalchemy import create_engine

engine = create_engine(
    "mysql+pymysql://root:admin@localhost/retail_project"
)

df = pd.read_sql("SELECT * FROM retail_table", engine)

df["Date"] = pd.to_datetime(df["Date"])
df["Revenue"] = df["Quantity"] * df["Price"]
df.dropna(inplace=True)

region_revenue = df.groupby("Region")["Revenue"].sum().sort_values(ascending=False)

df["Month"] = df["Date"].dt.to_period("M")
monthly_sales = df.groupby("Month")["Revenue"].sum()

category_revenue = df.groupby("Category")["Revenue"].sum().sort_values(ascending=False)

top_products = (
    df.groupby("Product")["Revenue"]
    .sum()
    .sort_values(ascending=False)
    .head(5)
)

print("\nRevenue by Region:\n", region_revenue)
print("\nMonthly Revenue:\n", monthly_sales)
print("\nRevenue by Category:\n", category_revenue)
print("\nTop 5 Products:\n", top_products)

plt.figure()
region_revenue.plot(kind="bar")
plt.title("Revenue by Region")
plt.show()

plt.figure()
monthly_sales.plot(kind="line")
plt.title("Monthly Revenue Trend")
plt.show()

plt.figure()
category_revenue.plot(kind="pie", autopct="%1.1f%%")
plt.ylabel("")
plt.title("Category Contribution")
plt.show()

plt.figure()
top_products.plot(kind="barh")
plt.gca().invert_yaxis()
plt.title("Top 5 Products by Revenue")
plt.show()
