# This program is going to have all the functions needed to scrape webpages or read_csv files or other things:
import csv
import pandas as pd
def read_csv(read_file):
    with open(read_file,"r") as file:
        type(read_file)

        csvreader = csv.reader(file)
        next(csvreader)

        rows =[]
        for row in csvreader:
            rows.append(row)
        print(rows[0])
    file.close()

allfile = read_csv("C:/Users/ironm/PycharmProjects/AI-Monster/2022.csv")
