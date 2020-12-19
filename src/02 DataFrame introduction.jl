# DATAFRAME INTRODUCTION
# --------------------

# IMPORTING DATA

using CSV

using DataFrames

using Pipe

pwd()

df = CSV.File("src/generated_data.csv") |> DataFrame


# VIEWING THE DATA

first(df, 3) # Print first three rows

last(df, 3) # Print the last three rows

show(df, allrows = true) # View all rows

show(df, allcols = true) # View all columns


# COLUMN HEADERS (VARIABLE NAMES)

names(df)


# GENERATING ARRAYS FROM A COLUMN

df.Age # Age array (not a copy)

df."Age" # Age array (not a copy)

df[!, :Age] # Age array (not a copy)

df[!, "Age"] # Age array (not a copy)

df[!, 2] # Age array (not a copy)

df.Age === df[!, :Age]

df."Age" === df[!, 2]

df[:, :Age] # Age array (a copy)

df[:, "Age"] # Age array (a copy)

df[:, 2] # Age array (a copy)

df[:, 2] === df[:, :Age]

first(df, 3)

age = df[:, :Age] # Array is a copy

df.Age[1] = 100 # Change dataframe permanently

first(df, 3)

age # Not changed

age = df[!, :Age] # Array is not a copy

df.Age[1] = 10 # Change dataframe permanently

first(df, 3)

age # Changed


# GENERATING A MATRIX FROM A DATAFRAME

Matrix(df)


# SUBSETS

df[1:3, :] # First three rows of all the columns

df[[1, 3, 5], :] # Rows 1, 3, and 5 of all the columns

df[1:3, [:Age, :Group]] # First three rows of Age and Group columns

df[[5, 3, 1], [:Group, :Age, :ID]] # Control the order

df[1:3, r"Gr"] # Using regular expression

df[1:3, Not(r"G")] # Omit a column


# CONDITIONS

df[df.Age .< 28, :] # Select only rows where age is less than 28

df[40 .< df.Age .< 60, :] # Ages between 40 and 60 (exclusive)

df[(df.Age .< 25) .| (df.Age .> 70), :] # Age less than 25 or greater than 70

df[(df.Age .<= 25) .& (df.Group .== "Treatment"), :]
# Age 25 and younger and in treatment group

df[in.(df.Age, Ref([20, 30, 40, 50, 60, 70, 80])), :]
# Specific Ages

select(df, :Age, :Group) # Use select function to select columns (returns a dataframe object)

filter(:Group => ==("Treatment"), df) # Use filter function to select specific rows
 
filter(:Group => x -> x == "Treatment", df) # Alternative syntax

filter(row -> row.Group == "Treatment", df) # Alternative syntax

select(df[:, [:Age, :DeltaLDL]], AsTable(:) => ByRow(extrema) => [:lo, :hi])


# GHANGE DATA TYPE OF VARIABLE

first(df, 3) # Group is a string type variable

df.Group = categorical(df.Group, levels = ["Placebo", "Treatment"])
# Change group variable to a categorical variable and set the levels

first(df, 3)  # Now a categorical variable with levels


# REPLACING DATA

df.Age[[1, 3, 5]] .= 0  # Change specified ages to 0

first(df, 7)

replace!(df.Age, 0 => 20) # Replace with 20

first(df, 7)