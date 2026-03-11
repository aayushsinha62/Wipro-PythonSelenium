import pandas as pd
from sqlalchemy import create_engine

engine = create_engine("mysql+mysqlconnector://root:admin@localhost/school")

df = pd.read_sql("SELECT * FROM students", engine)

print(df)

# average marks
print(df["marks"].mean())

# highest score
print(df[df["marks"] == df["marks"].max()])

# group by Subject
print(df.groupby("subject")["marks"].mean())