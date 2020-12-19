# CREATING DATA AND STORING IT IN A DATAFRAME
# -------------------------------------------

# CREATING RANDOM VARIABLE

using Random

rand() # A single random value on the interval [0,1]

1:5 # A unit range (shorthand for UnitRange)

UnitRange(1, 5) # The UnitRange function

collect(1:5) # Create an array from the unit range

rand(1:5) # A single random value from the interval [1,5]

rand(1:5, 3) # Three random variable on the interval [1,5]

rand(["Treatment", "Placebo"], 5) # Random nominal categorical variable

categorical(rand(["Treatment", "Placebo"], 5), levels = ["Placebo", "Treatment"])
# Indicate the data type as categorical arrays and sets the levels

using Distributions

rand(Normal(), 5) # Five random variable from the standard normal distribution

# CREATING A DATAFRAME OBJECT

using DataFrames

DataFrame() # An empty dataframe object

DataFrame(HeartRate = 70:75) # Using a column name and an assigment

DataFrame(:HeartRate => 70:75) # Using a symbol and a unit range pair

# CREATING A DATAFRAME WITH DATA

n = 100 # Sample size

rand() # A random variable from the interval [0, 1] (uniform distribution)

round(rand(), digits = 1) # Round off to a single digit

Random.seed!(21); # Seed the pseudorandom number generator

df = DataFrame(ID = 1:n, Age = rand(18:85, n), Group = categorical(rand(["Treatment", "Placebo"], n)), DeltaLDL = round.(rand(Normal(-0.5, 0.5), n), digits = 1))


# SAVE DATAFRAME OBJECT AS A CSV FILE

using CSV

CSV.write("/Users/juan/Documents/Julia/Projects/HealthCareStatistics/src/generated_data.csv", df)


# READING A CSV FILE AS A DATAFRAME

df2 = CSV.File("src/generated_data.csv") |> DataFrame

first(df2, 3)
