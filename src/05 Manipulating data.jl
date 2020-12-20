# MANIPULATING DATA
# -----------------

# INTRODUCTION

# The DataFramesMeta package adds six macros
# to the three macros in the DataFrames package (@select
# @transform, and @combine)
# Provides a convenient way to select and manipulate
# data


# SETUP

using DataFrames, DataFramesMeta

using Random, Statistics


# GENERATE DATA

Random.seed!(10); # Seed pseudorandom number generator for
# reproducible results

df = DataFrame(ID = 1:10, Var1 = rand(1:10, 10), Var2 = rand(-50:50, 10) ./ 10, Cat1 = rand(["I", "II"], 10))
# Two variables with 10 rows of data


# SELECT SPECIFIC DATA

@select(df, :Var1) # Select only the first variable and
# return a dataframe object

@select(df, :Var2, Var3 = abs.(:Var2)) # Select a column
# and create a new one by transforming another


# GROUP BY VALUES FOR A VARIABLE

grouped_df = groupby(df, :Cat1) # Create a grouped dataframe object

@select(grouped_df, :Var1) # Grouping variable is included


# TRANSFORM DATA

@transform(df, Var3 = abs.(:Var2)) # Same as @select


# SELECT ON CRITERIA

@where(df, :Var2 .> 0) # Select only rows where Var2 is positive

@where(df, :Var2 .< 0, :Cat1 .== "I") # Adding more constraints

@where(df, :Var2 .> mean(:Var2)) # Selection criteria based one
# a statistic

