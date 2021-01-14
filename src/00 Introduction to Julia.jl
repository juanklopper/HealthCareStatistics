# Preceding a line of code with a hash symbol
# tells the Julia compiler to ignore it.  Use
# it to comment your code for future use and
# as guide to other reading your code.

# JULIA THE BIG CALCULATOR
# ------------------------

# Basic arithmetic
# ----------------

# Julia is a language for scientic computing.  It
# can do all sorts of mathematical operations.
# In this section, we look at basic arithmetic.

# Addition
2 + 2

2 + 2 + 2

# Subtraction
2 - 3

2 + (-3)

# Multiplication
3 * 2

3 * 2 * 2

# Division
10 / 2

10 / 3

# Left division
3 \ 7
7 / 3

# Rational number
10 // 3

# Power
# The symbol for power is ^ (SHIFT and 6 on most
# keyboards).
3^2

# Built in Julia functions for mathematics
# ----------------------------------------

# Julia is a functional language.  A function
# is a keyword (reserved by the language).  Given
# an input, called arguments (with values) or
# parameters, they perform a funtion.  Even
# 2 + 2 is actual showhard for the +()
# function.
+(2, 2)
# Above, we passed two parameters to the +()
# function.  Note that the parameters are
# separated by commas.  Functions are followed
# directly by a set of parentheses, within
# which the parameters are passed.

# Truncated integer division
9 ÷ 4
÷(9, 4)

# Multiplicative inverse
inv(4)

# Floor division
fld(7, 3)
fld(-11, 3)
fld(11, -3)

# Modulus
# Remmber that the modulus and remainder
# mathematical operations differ when it
# comes to negative numbers.  For the
# modulo operation, the sign of the
# result is the same as the divisor.
# For the remainder operation, it is the
# same as the dividend
mod(11, 3)
mod(3, 11)
mod(-11, 3)
mod(11, -3)
mod(7, 3)

# Remainder
# 3 divides 7 twice, with a remainder
# of 1
7 / 3
rem(7, 3)
%(7, 3)
7 % 3
# Remainder take the sign of the dividend
11 % -3
-11 % 3

# Quotient and remainder
divrem(11, 3)

# Rationalize
10 // 4
10 / 4
rationalize(2.5)

# Fractional and integer part of a number
modf(10.5)
modf(-10.5)

# Factorial
factorial(4)

# Greatest common divisior
gcd(6, 9)

# Square root
sqrt(100)
√9

# Cube root
cbrt(27)

# Exponent
# The exponent is a power with Euler's
# number as the base
exp(1.0)
# We can use exp10() for a base of 10
exp10(2)

# Logarithm
# The log() function takes the natural logarithm.
log(exp(1))

# The log10() function has 10 as its base.
log10(1000)

# The log2() function has 2 as its base
log2(8)

# We can specify the base using the log()
# function).
log(10, 100)

# All the trigonometric functions are
# available
sin(π / 6)
sind(30)
cos(π / 3)
cosd(60)
tan(π / 4)
csc(π / 6)
sec(π / 3)
cot(π / 4)
asin(0.5)
rad2deg(π / 6)
asind(0.5)
sinh(2)

# Hypoteneuse
hypot(3, 4)

# Rounding to digits or significant
# numbers
println(round(π; digits = 10))
println(round(10.23534; sigdigits = 3))

# Absolute value
abs(-3)

# The imaginary number
2 + 4im
# For imaginary numbers, this will be
# the norm (length of vector in
# Argand plane).
abs(3 + 4im)
real(3 + 4im)
imag(3 + 4im)
reim(3 + 4im)
conj(3 + 4im)
rad2deg(angle(1 + im))


# OPERATORS
# ---------

# Introduction
# ------------

# We have already seen the mathematical
# operators +, -, *, /, \, %, etc. in
# action.
# The most common operator in Julia is
# the assignment operator, =.  It assigns
# what is to its right to what is to its
# left.
# We put a computer variable name on
# the left of the assignment operator.  A
# computer variable is a name chosen by
# us.  It is the name that references
# a section of computer memory to which
# the assigment operator assigns an object.
# Below, we assign the value 3 to the
# computer variable x.
x = 3

# The 3 is an object, now assigned to
# a small piece of computer memory called
# x.  This object is an instance of a Julia
# type.  Everything in Julia is, or has,
# a type.

# Assignment operators

# We have seen the = assignment operator.
# There are numerous others

# The += operator is equivalent to
# x = x + 1
x += 1

# The -= operator
x -= 1

# The *= operator
x *= 2

# The /= operator
x /= 2

# The \= operator
x \= 6

# The ^= operator
x ^= 3


# Logical operators
# -----------------

# The logical operators are &&, ||, and !.
# The logical operators enables
# Boolean logical where we have the
# true and false keywords.
true

false

# The && operator signifies logical AND
true && true

true && false

false && true

false && false

# The || operator is the logical OR
true || true

true || false

false || true

false || false

# The ! operator is logical NOT
!true

!false


# Relational operators

# These operators compare values

# Less than
3 < 4

# false is represented as 0 and true as 1
false < true

# Greater than
3 > 4

# Greater than or equal to
8 >= 8
8 ≥ 8

# Is equal to
3 == 3

3 == 3.

# Value and type equality
3 === 3.

# Not equal to
3 != 4
3 ≠ 4


# STRINGS
# -------

# Characters
# ----------

# Characters are denoted by single
# quotationmarks.
'x'

typeof('x')

# Type 'x' in the REPL and note that it
# is an ASCII/Unicode character (a 32-bit)
# primitive type).
# It is therefor represented by an integer.
Int('x')

Char(120)

# This allows for comparions and
# arithmetic.
Int('A')

Int('a')

Int('A') < Int('a')

Int('A') + Int('a')

# New lines and tabs
Int('\n')

Int('\t')

# Double quotation marks signifies strings
typeof("a")

# Strings
# -------

# Strings are denoted by a pair of
# double quotations or a set of three
# double quotes.
"I love Julia."

"I love 'Julia'."

println("""I love "Julia".""")

# Escape with a backslash
println("I love \"Julia\".")

typeof("I love Julia.")

# Using new lines
println("I love Julia.\nIt is a great language.")

# Using a tab
println("The total is:\t100")

# String indexing
# ---------------

# Each character in a string is indexed
# (starting at 1)
"I love Julia."[1:6]

"I love Julia."[8:12]

# This is the same as a Substring
SubString("I love Julia.", 8, 12)

# String operators
# ----------------

# Concatenation
"Hello" * "Julia"
println("Hello", "Julia")
"Hello " * "Julia"
("Hello" * ' ') * "Julia" # Grouping concatenation if more than two

# Repeats
"Julia"^3
repeat("Julia", 3)


# String-related function
# -----------------------

# Remove the last character
chop("Julia.")

# Checks last character
endswith("Julia", "a")

# First index value of specified character
findfirst("l", "I love Julia.")

# First n characters
first("I love Julia", 6)

# Last n characters
last("I love Julia.", 6)

# Number of characters
length("I love Julia.")

# Convert to lowercase
lowercase("I love Julia.")

# Convert to uppercase
uppercase("I love Julia.")

# First character uppercase
uppercasefirst("i love Julia.")

# String interpolation
# --------------------

# Perform mathematical functions in
# a string
"3 times 4 is $(3 * 4)."

x = 3 * 4;

"3 × 4 = $x"


# JULIA TYPE SYSTEM
# -----------------

# Introduction
# ------------

# Everything in Juia is a type.  Even
# as simple number such as 3.

# The typeof() function returns the type
# of an object.
typeof(3)

# Examples of types
# -----------------

# We saw that 3 is a 64-bit integer.

# We can assign this object to a
# variable.

x = 3

# Since this object was assigned to
# the computer variable x (and it is
# a single element), x has the same
# type.
typeof(x)

# There is a whole lot of types
# in Julia.
typeof(3.)
typeof(1 + im)
typeof(1. + im)
typeof("Julia")
typeof('J')

(1 + 2)::Int64

# Types are hierarchical and follow
# a tree-like structure.

# Type hierarchy
# --------------

# All types in Julia are a subtype
# of the type Any.  Right at the
# bottom of the tree we have abstract
# types.  They can be instantiated.  We
# saw some examples above.

# The Int64 type is an abstract type.
# Below, we investigate its parent
# types using the supertype() function.

supertype(Int64)

supertype(Signed)

supertype(Integer)

supertype(Real)

supertype(Number)

# All of the types yp the hierarchy
# are called abstract types and they
# cannot be instantiated.

# We can look at where the Float64
# abstract type falls in the type
# hierarchy.
supertype(Float64)

supertype(AbstractFloat)

# It joins up with the Int64 abstract
# type as a Real.

# We can also look at the child types
# down the hierarchy.
subtypes(Real)

subtypes(Rational)

# We note that Rational is a concrete
# type.


# FUNCTIONS
# ---------

# Introduction
# ------------

# While Julia has a tremendous number of
# functions, we can create our own using
# the function keyword.

# Creating functions
# ------------------

# A function consists of the function
# keyword, a chosen function name, and
# some arguments
function addition(x, y)
    return x + y
end

addition(3, 4)

# The return keyword is not strictly required.
function addition(x, y)
    x + y
end

addition(4, 5)

# Only the last evaluation is returned by the function.

function addition(x, y)
    x * y
    x % y
    x + y
end

addition(5, 6)

# When the return keyword is used, the function
# immediately returns that value.

function addition(x, y)
    return x + y
    x * y
end

addition(10, 20)

# We can specify the type of the
# arguments
function integer_addition(x::Int, y::Int)
    return x + y
end

integer_addition(3, 4)

# The return type can also be specified.
function multiplication(x, y)::Int64
    return x * y
end

multiplication(3., 4)

typeof(multiplication(3., 4))

# A function can return multiple values and
# does so in the form of a tuple (see
# collections later).

function add_mult(x, y)
    return x + y, x * y
end

add_mult(3, 4)

typeof(add_mult(3, 4))

# Each element of a tuple can be named
# (assigned to a computer variable).
a, b = add_mult(3, 4)

# The variables a and b now hold the
# individual elements of the tuple.
a

b

# A shorter syntax is available.
short_addition(x, y) = x + y

short_addition(3, 4)

# We can use Unicode function names.
∏(x, y) = x * y

∏(3, 4)

# Anomymous function
# ------------------

# The map() function maps the second
# argument to the anonymous function in
# the first argument.
map(x -> x^2, 4)


# Arguments
# ---------

# Arguments are positional.
divide(x, y) = x / y

divide(10, 2)

# Default arguments
divide(x = 10, y = 5) = x / y

# A call without arguments will use the
# defaults of the positional
# arguments.
divide()

# The default values can be overwritten
divide(20, 4)

# Keyword arguments

# These are placed after a semi-colon.
# Default values can be passed.  A name
# and value must specified (order of named
# arguments does not matter) to overwrite
# the default values.

multiply(x, y; a = 3, b = 4) = x * y * a * b

multiply(3, 4)

multiply(3, 4; b = 2, a = 1)

# Piping

# Piping allows us to construct a
# chain of functions.

# The unit range is an iterable.
1:5

typeof(1:5)

# We can pipe one operation into the
# next.
1:5 |> sum |> √

# This is the same as below.
√(1 + 2 + 3 + 4 + 5)

# We can also compose functions.
(sqrt ∘ +)(1, 2, 3, 4, 5)
(sqrt ∘ sum)(1:5)


# Variable scope
# --------------

# The scope of a variable is its
# visibility within our code.  This
# allows us to use the same variable
# name, whilst it holds different values
# and performs different tasks.

# Setting a variable to a global scope
x = 3;

# Defining a function and stipulating
# that the same variable, x, be used
# in local scope.
function local_scope(p, q)
    local x = p * q
    return x
end

local_scope(3, 4)

# Using x in the global scope.
x

# Below, we create a function where
# x is used in the global scope.

function global_scope(p, q)
    global x = p * q
    return x
end

global_scope(3, 4)

# The global x has now changed.
x

# To optimize code, global variables
# can be expressed as constants.  Their
# type can then not be changed.

const my_constant = 3

# The constant variable value can
# be reassigned, but not its type.
my_constant = 4

# try-catch
# ---------

# The try and ctach statements help us
# catch errors.  Below, we create a
# function that takes the square root
# of an argument.  If the square root
# cannot be taken, a message to the
# effect is printed.
function square_root(x)
    try
        sqrt(x)
    catch
        println("The square root cannot be taken.")
    end
end

square_root(9)

square_root(-9)

square_root("9")


# Methods
# -------

my_number_addition(x::Number, y::Number) = x + y

my_number_addition(3., 4)

addition(x::T, y::T) where {T} = Float = x + y

addition(3, 4)

methods(addition)

addition(x::Number, y::Number) = x + y

methods(addition)


# FLOW CONTROL
# ------------

# Introduction
# ------------

# The control of flow allows us to
# execute code based on conditionals.

# Compound expressions
# --------------------

# Compound expressions allow us to
# evaluate code in order.
answer = begin
    x = 3
    y = 2
    x + y
end

answer

# There are alternative forms of this
# syntax.
answer = (x = 4; y = 2; x + y)

answer

answer = begin x = 2; y = 2; x + y end

# if-elseif-else statements
# -------------------------

# These statements allow us to perform
# conditional check and execute selected
# code accordingly.
if 3 > 4
    println("Greater")
elseif 3 == 4
    println("Equal")
else
    println("Less")
end

# If-elseif-else statements are often used
# in functions.
function compare(x, y)
    if x == y
        print("Same")
    elseif x > y
        print("Greater")
    else
        print("Less")
    end
end

compare(3, 4)

# Below, we create a function that iterates
# from 1 through 20 using a unit range.  We
# set a divisor and iterate over the unit
# range.  If the unit value at each iteration
# is divisible by the divisor, we print the
# value, a tab, and the text Bar.  If it is not,
# we print the value, a tab, and the text
# Foo.
function foobar(m)
    for i = 1:20
        if i % m == 0
            print(i, "\tBar\n")
        else
            print(i, "\tFoo\n")
        end
    end
end

foobar(3)

# The ternary operator is a form of
# if-else statement.
6 % 3 == 0 ? "Bar" : "Foo"

function shorter_FooBar(m)
    for i = 1:20
        i % m == 0 ? println(i, "\tBar") : println(i, "\tFoo")
    end
end

shorter_FooBar(3)

# while loop
# ----------

# The while loop iterates until
# a condition is satisifed.
itr = 1

# Below, we iteratively increase the
# value of the global variable, itr,
# by 1.
while itr <= 5
    println(itr)
    global itr += 1
end

# for loop
# --------

# This loops through a collection that
# is iterable, such as a unit range.
for n = 1:10
    println(n)
end

# We can loop within a loop.
for i = 1:2, j = 1:3
    println((i, j))
end


# CONSTRUCTORS
# ------------

# Introduction
# ------------

# Constructors create objects just like
# functions do.  The objects are instances
# of the composite types.

# Creating an abstract type
# -------------------------

# Below, we construct a type called
# BloodPressure.

struct BloodPressure
    systolic
    diastolic
end

# Blood pressure is now a type, just like
# Real is a type.
typeof(Real)

typeof(BloodPressure)

# The type BloofPressure has two fields
fieldnames(BloodPressure)

# We can instantiate BloodPressure
ideal = BloodPressure(120, 80)

ideal.systolic

ideal.diastolic

# The ideal variable is an instance
# of the BloodPressure type
typeof(ideal)

# BloodPressure is a child of Any
supertype(BloodPressure)

# It is a concrete type (hence our
# ability to instantiate it).
subtypes(BloodPressure)

# Inner constructors
# ------------------

# We can define properties inside of
# a constructor.  Below, we also
# constrain the values of the fields
# to integers.

struct BloodPressure2
    systolic::Int
    diastolic::Int
    BloodPressure2(systolic, diastolic) =
        systolic < diastolic ? error("Systolic must be higher than diastolic") :
        new(systolic, diastolic)
end

# Reals will be converted to integers (if
# possible).
BloodPressure2(120., 80)

typeof(BloodPressure2(120., 80).systolic)

# So far, our structs are immutable.  This is easily
# changed by adding the mutable keyword.

# Mutable structs
# ---------------

# Below, we create a mutable struct.
mutable struct Physiology
    systolic::Int
    diastolic::Int
    heart_rate::Int
    temperature::Real
end

# Now we instantiate our new type.
ideal = Physiology(120, 80, 72, 37)

# The heart rate was set to 72.
ideal.heart_rate

# We can now rewrite this value.
ideal.heart_rate = 65

ideal

# More control of field types
# ---------------------------

# Parametric types allow us to
# specify a consistent type for
# the fields.

mutable struct Electrolytes{T}
    sodium::T
    potassium::T
end

# When instantiated, both field values
# must be the same type.
ideal = Electrolytes(140., 4.5)

ill = Electrolytes(150, 3)

# The advantage of using parametric types
# is that they can be instantiated as any
# type.

Electrolytes{String} <: Electrolytes

Electrolytes{Real} <: Electrolytes

# We now also specify the type.
Electrolytes{Float64}(140, 4)

# Functions containing our structs
# --------------------------------

# Now that we have created a new type,
# we can use it in a function.  Below,
# we create a function called pulse_pressure,
# which is the difference between systolic
# and disatolic blood pressure.
function pulse_pressure(b::BloodPressure)
    return b.systolic - b.diastolic
end

# Instantiating BloodPressure
bp = BloodPressure(120, 80)

# Calling the function and passing
# the instance of BloodPressure to it.
pp = pulse_pressure(bp)

# Now, we create another function to
# calculate mean arterial pressure.  The
# equation for this subtracts a third of
# the pulse pressure from the diastolic
# pressure.  Note how we call another function
# inside of this function.
function mean_arterial_pressure(b::BloodPressure)
    pulpres = pulse_pressure(b)
    return b.diastolic + (1 / 3) * pulpres
end

mean_arterial_pressure(bp)

# The Electrolyte type was parametrically
# defined.  Our instance, ill, had two
# integer-valued fields.  When creating
# a function that might call any data
# type, we can constrain the type.
function check_potassium(p::Electrolytes{<:Real})
    if p.potassium > 5.2
        println("Too high")
    elseif p.potassium < 3.6
        println("Too low")
    else
        println("Normal")
    end
end

# Here, we re-print the ill variable.
ill

# Now, we use it as an argument in the
# function.
check_potassium(ill)


# COLLECTIONS
# -----------

# Introduction
# ------------

# Collections are elemnts combined
# into a single unit.

# Arrays
# ------

# Literal arrays are elements
# separted by commas and placed
# in square brackets.

[3]

[1, 2, 3]
# Note that Atom displays this as a vector.
# In the REPL this is displayed as
# as a 3-element Array{Int64,1}.  This
# refers to the fact that we entered
# 3 obects, all of type Int64 and they are
# whet we would consider a rank 1 tensor.

# We can specify the keyword Array.
Array([1, 2, 3])

# The element type can also be specified.
Float64[1, 2, 3]

# The type is a vector (one-dimensional)
# array.
typeof([1, 2, 3])

# In the REPL this will be displayed as an
# array.  We can view thr hierarchical type
# structure using teh sypertype and subtypes
# functions.
supertype(Vector)

supertype(DenseArray)

supertype(AbstractArray)

subtypes(AbstractArray)

# To create a row vector, we add
# spaces between elements.
[1 2 3]
# Note the change to Array{Int64, 2}.
# This is now what we would consider
# a matrix (rank 2 tensor) with a
# single row and 3 columns.

# We add a second row (more than one
# column), by adding a semi-colon.
[1 2 3; 4 5 6]

# We now have a 2 by 3 array of
# integer elements.

# Column vectors can be created as
# row elements (spaces inbewteen)
# in an array.
[[1, 2] [3, 4] [5, 6]]

# The reshape() function takes an array
# and reshapes it according to
# the given dimesnions.  Note that
# the elements are placed down the
# columns.
reshape([1, 2, 3, 4, 5, 6], (3, 2))

reshape([1, 2, 3, 4, 5, 6], (2, 3))

# There are a number of useful functions
# that create arrays.

# The zeros() function creates
# an array of 0's of given length.
# or dimension
zeros(3)

# We can specify the type of 0's.
zeros(Int64, 3)

# The ones() function does the same,
# but with 1's.
ones(Int64, 3, 3)

# In Julia, true is a Bit and is
# set to 1.
trues(3, 3)

# False is set to 0.
falses(3, 3)

# Diagonal() creates a diagonal
# matrix given the diagonal
# values.  This function is
# part of package called LinearAlgebra.
# We must import it first.
using LinearAlgebra
Diagonal([1, 2, 3])
# Note how this is a sparse array,
# with only the non-zero elements
# and their indices saved.

# The range() function takes
# a starting value as positional
# argument and keyword arguments for
# the stop and step values.  It
# return a unit range ideal for
# iteration.
range(1; stop = 5, step = 1)

# The collect() function returns an
# array of the actual values in
# the unit array.
collect(range(1; stop = 5, step = 1))

# The fill() function creates an array
# with filled with a specified value.
fill(3., (2, 2))

# List comprehension creates elements
# of an array by expression and iteration.
[i^2 for i = 1:3]

# The copy() function creates a copy of
# an array.
my_array = [1 2 3; 4 5 6; 2 3 4]

# The copy() function makes a copy
# of an array.
my_array_2 = copy(my_array)

# Now we change the value of the
# first element in the copy.
my_array_2[1, 1] = 100

my_array_2

# The value of the first element
# in the original array has not
# changed.
my_array

# If we simply assign a new array to
# an exiting array, they point to the
# same object and changes to one are
# changes to both.
my_array_2 = my_array

# Now we change a value in my_array_2.
my_array_2[1, 1] = 1000

# The same change was made to
# my_array.
my_array

# The similar() function creates a
# copy of the referenced array, but
# with placeholder values of a given
# type.
my_array_3 = similar(my_array, Float64)

# We can also create an array
# with undefined values.
my_array_4 = Array{Float64}(undef, 3, 3)

# The rand() funtion returns a
# value (or specified number of)
# values from the half-open interval
# [0,1) taken from a uniform
# distribution.
rand(5)

# The randn() function does the same, but
# from the standard normal distribution.
randn(5)

# A vector with elements of differing
# types will have all the elements
# converted to the highest concrete
# type.
[1, 2., 3//4]

# When an element is a string, elements
# are all of type Any.
["Julia", 1, 0.5]

# An empty array is of element type
# Any.
[]


# Finding properties of arrays
# ----------------------------

# There are many functions to investigate
# the properties of an array.

# Changing a single element to a float.
my_array_4 = [1 2 3; 4. 5 6; 2 3 4]

# All the elements in my_array were
# 64-bit integers.
eltype(my_array)

# Type inheritence will convert all elements
# to Float64.
eltype(my_array_4)

# Number of elements in an array.
length(my_array)

# Number of dimensions.
ndims(my_array)

# Tupe of length of each dimension.
size(my_array)

# Tuple of valid indices alon each axis.
axes(my_array)

# Specify the axis.
axes(my_array, 1)

# There is an efficient iterator for each
# index in an array.
[println(i) for i in eachindex(my_array)]


# Indexing
# --------

# Each element in an array has an index.

# Below, we create a 5x4 array.
my_array = [1 2 3 4; 5 4 3 2; 3 4 5 6; 7 6 5 4; 2 4 6 8];
my_array

# The size() function returns the
# required array.
size(my_array)

# All the elements in the first
# row.
my_array[1, :]

# All elements in column 1.
my_array[:, 1]

# All elements in rows 1 to 3
# and columns 1 to 3.
my_array[1:3, 1:3]

# Values in column 1 and 3.
my_array[:, [1, 3]]

# We can also extract values using a
# matrix of Boolean values.
slt = rand(Bool, (5, 4))

# Only the indices with true (1)
# are selected when this is used
# to index a matrix.
my_array[slt]

# We can use such a selection to
# change values.
my_array[slt] .= 300;

# The selected values have now changed.
my_array

# Dictionaries
# ------------

# Dictionaries are elements in a list,
# each consisting of two parts, a key
# and a value.  So, instead of relying
# on an index, we can reference the
# key to get a value.  The Dict function
# creates a dictionary.
my_dict = Dict("Language" => "Julia", "Version" => 1.4,
"Type" => "Compiled")

# The keys() function returns the keys
# in a dictionary
keys(my_dict)

# The values() function returns the
# values in a dictionary.
values(my_dict)

# The get() function returns the
# value of a specified key, or else
# a default if it is given.


