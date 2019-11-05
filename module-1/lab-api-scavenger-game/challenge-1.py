# enter your code below
import requests
import json
import pandas as pd
from pandas.io.json import json_normalize
import numpy as np

# Challenge 1
url1 = 'https://api.github.com/repos/ironhack-datalabs/datamex1019/forks'

response1 = requests.get(url1, )
results1 = response1.json()
flattened_data1 = json_normalize(results1)
df1 = flattened_data1

lst1 = []
for i in df1['language']:
    lst1.append(i)

ary = np.array(list(set(lst1)))
print(ary)

# Challenge 2
url2 = 'https://api.github.com/repos/ironhack-datalabs/datamex1019/commits'

response2 = requests.get(url2)
results2 = response2.json()
flattened_data2 = json_normalize(results2)
df2 = pd.DataFrame(flattened_data2)

lst2 = []
for i in df2['commit.author.date']:
    if int(i[9]) < 9:
        lst2.append(1)

print(len(lst2))

# Challenge 3
# I ran out of GitHub API requests
