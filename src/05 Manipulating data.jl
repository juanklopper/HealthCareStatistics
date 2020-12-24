# MANIPULATING DATA
# -----------------

# INTRODUCTION

# The DataFramesMeta package adds six macros
# to the select, transformm, and combine functions in
# the DataFrames package
# It provides a convenient way to select and manipulate
# data


# SETUP

using DataFrames, DataFramesMeta

using Random, Statistics


# GENERATE DATA

Random.seed!(10); # Seed pseudorandom number generator for
# reproducible results

df = DataFrame(ID = 1:10, Var1 = rand(1:10, 10), Var2 = rand(-50:50, 10) ./ 10, Cat1 = rand(["I", "II"], 10))
# Two variables with 10 rows of data


# SPLIT-APPLY-COMBINE

# This is a strategy to group data, apply functions
# to each group, and combine the data again
# The groupyby function creates a GroupedDataFrame object
# The combine, select or select! and the transform or
# transform! functions can be used on a GroupedDataFrame
# These functions also act of AbstractDataFrame objects (when
# the groupby function is not used)


# CREATING A GROUPEDDATAFRAME object

gdf = groupby(df, :Cat1) # Group by sample space
# elements in the Cat1 variable

gdf[(Cat1 = "I", )] # View only selected subdataframe


# CALCULATE A STATISTIC

combine(gdf, nrow) # Number of cases per class

combine(gdf, :Var1 => sum) # Sum of Var1

combine(gdf, :Var1 => mean) # Mean of Var1 per
# Cat1 element

combine(gdf, :Var1 => mean => :mean) # Name the
# new column

combine(gdf, nrow, :Var1 => mean => :average)
# More than one calculation

combine(gdf, AsTable([:Var1, :Var2]) =>
    x -> mean(x.Var1) / mean(x.Var2)) # More than
# one variable

combine(x -> mean(x.Var1) / std(x.Var1), gdf)
# Function notation

combine(gdf, :Var1 => (x -> [extrema(x)]) => [:min, :max])

combine(gdf) do df
    (μ = mean(df.Var1), σ = std(df.Var1), e = extrema(df.Var1))
end # Using a do end block


# SELECT SPECIFIC DATA

@select(df, :Var1) # Select only the first variable and
# return a dataframe object

@select(df, :Var2, Var3 = abs.(:Var2)) # Select a column
# and create a new one by transforming another


# TRANSFORM DATA

@transform(df, Var3 = abs.(:Var2)) # Same as @select


# SELECT ON CRITERIA

@where(df, :Var2 .> 0) # Select only rows where Var2 is positive

@where(df, :Var2 .< 0, :Cat1 .== "I") # Adding more constraints

@where(df, :Var2 .> mean(:Var2)) # Selection criteria based on
# a statistic

