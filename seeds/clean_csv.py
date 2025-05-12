import pandas as pd

df = pd.read_csv("imdb_top_1000.csv")

# Remove vírgulas da coluna 'Gross', mantendo valores nulos
df['Gross'] = df['Gross'].str.replace(",", "")
df.to_csv("imdb_top_1000.csv", index=False)
