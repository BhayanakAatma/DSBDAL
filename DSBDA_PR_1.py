import pandas as pd
import numpy as np

df = pd.read_csv("studentDetails.csv")
print("isnull() Function:")
print(df.isnull())

gB = df.groupby("Branch")
print("groupby() Function:")
print(gB.get_group("Computer"))

df = df.replace(to_replace= np.nan, value = 0.0)
print("replace() Function:")
print(df)
