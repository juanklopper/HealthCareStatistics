# MANAGING MISSING DATA
# ---------------------

# MISSING DATA TYPE

missing # Julia keyword for absent data

typeof(missing)

supertype(Missing)

wcc = [12.4, 13.4, missing, 9.8, 14.7] # Array containing an absent data point

typeof(wcc)

eltype(wcc) # Data types of elements

sum(skipmissing(wcc)) # Add all values and skip absent data point

length(collect(skipmissing(wcc))) # Some functions require collect functions

wcc_mean = sum(skipmissing(wcc)) / length(collect(skipmissing(wcc)))
# Mean is sum divided by sample size

imputed_wcc = coalesce.(wcc, wcc_mean) # Replace missing data with mean

wcc # Absent data is still missing


# READ A FILE WITH MISSING DATA DENOTED BY EMPTY CELLS

using CSV, DataFrames

df = CSV.File("src/missing.csv") |> DataFrame

names(df)

show(df, allrows = true)


# TOTAL MISSING VALUES

count(ismissing, Matrix(df)) # Convert to an array

count(ismissing, Iterators.flatten(eachcol(df))) # Alternative


# TOTAL MISSING VALUES IN EACH COLUMN

mapcols(x -> count(ismissing, x), df) # Show number of missing values
# in each columns


# FIND ROWS WITH MISSING VALUES

filter(row -> any(ismissing, row), df)


# REMOVE ALL ROWS WITH MISSING DATA

dfAllData = dropmissing(df) # Create a new dataframe object

show(dfAllData, allrows = true)


# REMOVE ROWS WHEN SPECIFIED COLUMNS HAS MISSING DATA

show(dropmissing(df, :Age), allrows = true) # Only drop rows when
# age data is not available


# IMPUTE MISSING DATA

sum(skipmissing(df.Age)) # Sum of all available ages

length(collect(skipmissing(df.Age))) # Sample size of available ages

mean_age = sum(skipmissing(df.Age)) / length(collect(skipmissing(df.Age))) # Mean age

imputed_age = coalesce.(df.Age, mean_age) # Array with imputed values

df.Age = imputed_age # Replace age column with array

mapcols(x -> count(ismissing, x), df) # Show number of missing values
# in each columns