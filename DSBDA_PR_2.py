import pandas as pd
import numpy as np

student_details = {
"RollNo": [1, 2, 3, 4, 5],
"Name": ["Shashank", "Bharat", "Saurabh", "Priyesh", "Omkar"],
"CGPA": [np.nan, np.nan, 8.16, 7.6, 8],
"Year": ["TE", "TE", "SE", "BE", "FE"]
}

df = pd.DataFrame(student_details)

print("Example of GroupBy Function:")
gb = df.groupby("Year")
print(gb.get_group("TE"))

print("Before Replacement: ")
print(df)

df = df.replace(to_replace = [np.nan], value = 0)
print("After Replacement: ")
print(df)
