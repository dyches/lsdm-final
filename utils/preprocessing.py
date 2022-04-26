# This script combines the functionality of dataset_reduction.py and standardize.py.

import pandas as pd
from langdetect import detect

# Read in dataset to dataframe. The scipt expects it to have it's original
#  name, and to be in the same directory as the dataset. Set low_memory to True
#  if you have a smaller amount of RAM.
df = pd.read_csv('en.openfoodfacts.org.products.csv', sep='\t', low_memory=False, on_bad_lines='skip')

# Remove unused columns.
kept_columns = ['product_name',  'countries_en', 'ingredients_text',]
df = df[kept_columns]

# Remove entries that are outside of the project's scope.
df = df[df['countries_en'].isin(['Mexico','United Kingdom', 'United States',])]

# Remove entries with missing values.
df.dropna(inplace=True)

# Standardize
df['detect'] = df['ingredients_text'].str.lower()
df = df[df['detect'].str.islower()]
df['detect'] = df['ingredients_text'].apply(detect)

df = df[df['detect'] == 'en']
df['ingredients_text'] = df['ingredients_text'].str.lower()

df_final = df.loc[:, df.columns!='detect']

df_final.to_csv('foodfacts.csv')

