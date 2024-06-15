# -*- coding: utf-8 -*-
"""
Created on Sun Dec  4 18:29:16 2022

@author: shwet
"""

import pandas as pd
import matplotlib.pyplot as plt
import os

os.getcwd()
os.chdir('C:/Users\shwet\Python')
os.getcwd()

providerfund = pd.read_csv("ProviderNursingFund.csv", sep = ",", dtype={'first_column': 'int', 'second_column': 'str', 'third_column': 'str', 'fourth_column': 'str', 'fifth_column': 'str', 'sixth_column': 'str', 'seventh_column': 'str', 'eighth_column': 'int', 'nineth_column': 'int', 'tenth_column': 'int', 'eleventh_column': 'int', 'tweleveth_column': 'int', 'thirteenth_column': 'int', 'fourteenth_column': 'int', 'fifteenth_column': 'str', 'sixteenth_column': 'int'})

providerfund.info()
providerfund

providerfund.head(10)
providerfund.tail(13)
providerfund.columns
providerfund.dtypes

providerfund['Total Resident Weeks']
providerfund.mean()
providerfund.describe()

providerfund.groupby(['Infection Performance Score'])['County Infection Rate Per 1000 Resident Weeks'].sum()
providerfund.groupby(['Facility Infection Rate Per 1000 Resident Weeks']).mean()
providerfund.groupby(['Mortality Adjustment'])['Facility Infection Rate Per 1000 Resident Weeks'].mean()

plt.boxplot(providerfund['Infection Performance Score'])

plt.bar(providerfund['State'],providerfund['County Infection Rate Per 1000 Resident Weeks'], color='blue')
plt.title('Average Weekly no of County infections in each state')
plt.xlabel('State')
plt.xticks(fontsize = 5)
plt.ylabel('No of County Infections')
plt.show()

m = providerfund['Final Payment'].max()
print(m)

p = providerfund['Mortality Adjustment'].min()
print(p)

q = providerfund['Mortality Adjustment'].max()
print(q)

n = providerfund['Performance Month'].max()
print(n)

o = providerfund['Performance Month'].min()
print(o)

a = providerfund['Infection Performance Score'].max()
print(a)

b = providerfund['Infection Performance Score'].min()
print(b)
