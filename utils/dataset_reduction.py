# This script removes irrelavant fields, incomplete entries, and entries that
#  are outside of the project's scope (e.g. French food entries).

import pandas as pd

# Read in dataset to dataframe. The scipt expects it to have it's original
#  name, and to be in the same directory as the dataset. Set low_memory to True
#  if you have a smaller amount of RAM.
df = pd.read_csv('en.openfoodfacts.org.products.csv', sep='\t', low_memory=False)

# Remove unused columns.
kept_columns = ['product_name',  'countries_en', 'ingredients_text',]
df = df[kept_columns]

# Remove entries that are outside of the project's scope.
df = df[df['countries_en'].isin(['Mexico','United Kingdom', 'United States',])]

# Remove entries with missing values.
df.dropna(inplace=True)

# Write resulting dataset to 'filtered_data.csv'. Note that the new csv still uses tabs.
df.to_csv('filtered_data.csv', sep='\t', index=False)
