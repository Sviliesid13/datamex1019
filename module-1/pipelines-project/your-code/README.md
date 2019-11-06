Acquisition:

My first step was to define a function to import the file where the database is. I chose to print it as an input so the user could open any file he/she wanted. Outside of the function I declared the result as a Pandas DataFrame.

Wrangling:

When trying to clean and sort the information in a way everyone can understand it, I tried a pipeline so whatever detail you wanted to know about the database could be displayed easy, without having to do a lot. First, I eliminated white spaces from the column names so that they could be referenced more accurately. Then, I just displayed the first and last rows so the one analyzing the data could have an idea of what's in there. After that, I would ask the user to write the 5 columns he was interested the most and display them for analysis. I would then call a function to clear all duplicates and have less more rows in the database. Last, I would erase all null values from the column the person. Was interested the most.

Analysis:

An easy analysis, when it came to mind, would be counting the number of appearances of a certain column which could be displayed in a table in order to make an analysis. This would make the one reading it have a more clear look at the data.

Reporting:

I would simply export the results of the knew DataFrame the user was to create and make a .csv file for him to access it later on.

Own analysis of results:

Since I looked at the database, the most important column to me was the country where the attacks were made. I could sea that obviously the attacks were much more frequent in areas where the countries have open sea. Also the top three countries (USA, Australia & South Africa) are countries with an extremely big surfing culture. It seemed to me that the relation between this sport and shark attacks made a lot of sense.

With this program, I was able to analyze every aspect of any columns, but it seemed most important to me the country column in order to know which places report the most shark attacks.
