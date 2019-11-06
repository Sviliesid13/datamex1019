import numpy as np
import pandas as pd

welcome = 'Welcome to the Shark Attack Database!'
print(welcome)


# Acquisition
def acquire(data):
    acq = pd.read_csv(data, encoding='latin 1')
    return acq


df = pd.DataFrame(acquire(input('Type the path of the Database: ')))
print(df.T)

# Wrangling
df.columns = df.columns.str.strip()


def display_column(a, b, c, d, e):
    display = df[[a, b, c, d, e]]
    return display


dc = display_column(input('Choose 5 columns to display: \n1st column: '), input('2nd column: '), input('3rd column: '),
                    input('4th column: '), input('5th column: '))
print(dc)


def null_cleaner(column_name):
    if column_name in dc.columns:
        clean = dc.drop_duplicates()
        clean = dc.dropna(subset=[column_name])
        return clean
    else:
        print(null_cleaner(input('Not a column in the Database. Try again: ')))


cl = null_cleaner(input('Type the name of the column you want to clean: '))
cleaned = pd.DataFrame(cl)
print(cleaned)


# Analysis
def count(column):
    ct_vl = df[column].value_counts()
    return ct_vl


ct = count(input('Choose a column for analysis: '))
print(ct)


# Reporting
def export(name):
    exp = ct.to_csv(name)
    return exp


file = export(input('Name the file you want to export: '))
