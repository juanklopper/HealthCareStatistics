# MANAGING MISSING DATA
# ---------------------

# READ A FILE WITH MISSING DATA DENOTED BY EMPTY CELLS

using CSV, DataFrames

df = CSV.File("src/missing.csv") |> DataFrame

names(df)

show(df, allrows = true)


# TOTAL MISSING VALUES

count(ismissing, Matrix(df)) # Convert to an array

count(ismissing, Iterators.flatten(eachcol(df))) # Alternative


# TOTAL MISSING VALUES IN EACH COLUMN

mapcols(x -> count(ismissing, x), df)


# FIND ROWS WITH MISSING VALUES

filter(row -> any(ismissing, row), df)


# REMOVE ALL ROWS WITH MISSING DATA

dfAllData = dropmissing(df) # Create a new dataframe object

show(dfAllData, allrows = true)