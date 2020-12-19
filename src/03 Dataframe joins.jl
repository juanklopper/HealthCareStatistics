# JOINING DATAFRAMES
# ------------------

# Read more at https://dataframes.juliadata.org/stable/man/joins/


# CREATING DATAFRAMES

using DataFrames, Random

Random.seed!(10)

dfDemographics = DataFrame(ID = 1:10, Area = rand(["Zone I", "Zone II", "Zone III"], 10))

dfPersonal = DataFrame(ID = 1:11, Age = rand(18:85, 11))

dfData = DataFrame(ID = 1:8, LDLDelta = rand(-5:5, 8) ./ 10)


# JOIN ONLY WHEN DATA IS AVAILABLE ACROSS DATAFRAMES

innerjoin(dfDemographics, dfPersonal, on = :ID)

innerjoin(dfPersonal, dfData, on = :ID)

innerjoin(dfDemographics, dfPersonal, dfData, on = :ID)


# JOIN ON THE FIRST DATAFRAME

leftjoin(dfPersonal, dfData, on = :ID)


# JOIN ON THE LAST DATAFRAME
rightjoin(dfData, dfPersonal, on = :ID)


# JOIN ON ALL DATA

outerjoin(dfDemographics, dfPersonal, dfData, on = :ID)


