import numpy as np
import csv

fields = ["Name", "Branch", "Year", "Marks"]
rows = [ ["Shashank", "Computer", "TE", np.nan],
         ["Bharat", "Computer", "TE", np.nan],
         ["Raj", "Electrical", "SE", 71],
         ["Shubham", "Mechanical", "BE", np.nan],
         ["Hemant", "Computer", "SE", 92],
         ["Raghav", "Computer", "SE", 80],
]

fileName = "studentDetails.csv"

with open(fileName, "w") as csvfile:
    csvwriter = csv.writer(csvfile)
    csvwriter.writerow(fields)
    csvwriter.writerows(rows)
