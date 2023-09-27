#PRACTICE FOR FINAL EVAL

# 1. Given an array of strings, print only the strings that have exactly 4 characters.

# Overall goal: to print the strings with only four characters

# Pseudocode- for each of the string in the array, so we will need .each method
# we will need to compare to an integer so "==" will be useful


# colors = ["Blue", "Green", "Yellow", "Orange", "Purple", "Black", "Pink"]

#Answer:

# colors.each do |color|
#     if color.length == 4
#        print color
#     end
# end

#================================================================================================#

# 1. Start with an array of strings with a mix of uppercase and 
# lowercase letters. Print every word in all lowercase letters.

# Overall goal: to print the elements of an array in all lowercase.

# Pseudocode: we will start with an array and go through each string and change the case
# so we will need the .each method again and we will need to act upon each element and change the
# case, which the .downcase method will be useful for

# Answer:

# colors = ["Blue", "Green", "Yellow", "Orange", "Purple", "Black", "Pink"]

# colors.each do |color|
#    puts color.downcase
# end


#================================================================================================#

# 1. Write a method or function that removes all instances of the letter <strong>s</strong> 
 # in a string. The method or function should accept a string as an 
 # argument and return the same string with every instance of the letter <strong>s</strong> 
  # removed.

# Overall goal: We need to remove the "s" character in a given string and then print it

# Pseudocode: We'll be given a string, then we have to find a method to remove a single character
# that should look like `p string.method` after we represent the string in a variable

# Answer:

# a_saying = "For every reaction there is an equal and opposite reaction, said someone at sometime"
# p a_saying.delete("s")

# I found the `.delete` method online in Ruby-docs and had to remember to put parenthesis around the s before it would work

#================================================================================================#

# 1. Start with an array of hobbies. Print out only the words that end in "ing".

# Overall goal: print out the elements in an array that end in the characters "ing"

# Pseudocode: we are given an array and want to act on each element so the .each method will be useful
# Each element is a string in itself so we need a method to find "ing" and return a boolean true or false
# after that we can print the ones that return a value of true and ignore the rest, which will include an if statement
# we could use the include? method but the string element "Working Out" doesn't end in "ing" but includes it
# and this is not what was asked. (But maybe we could clarify if this counts or not). So I would go with the `.end_with?``` method 

# Answer:

# hobbies = ["Biking", "Guitar", "Swimming", "Working Out", "Reading", "Skiing", "Writing"]

# hobbies.each do |hobby|
#     if hobby.end_with?("ing")
#         p hobby
#     end
# end


#================================================================================================#

# 1. Start with an array of travel destinations. 
# Print every travel destination in alphabetical order embedded in a 
# sentence using string interpolation. 
# For example, if the destination is "New York City", 
# print something like "The next place I want to visit is New York City!" 

# Overall goal: print the elements in an array in alphabetical order and within a string

# Pseudocode: we are dealing with an array so the .each method is probably useful here again
# but first we need to put the elements in alphabetical order with a method
# the `.sort` method is used to sort things, that should work so we'll put that in front of the each method
# that's the only way I could get it to work and it sort of makes sense too. 
# Then after we have gotten it sorted through each element in the array, we can add it into a string

# Answer:

# cities = ["Seattle", "Vancouver", "Chicago", "New York", "Sedona", "Los Angeles", "Savannah"]

# cities.sort.each do |city|
#     p "The next place I want to visit is #{city}"
# end


#================================================================================================#

# 1. Given a sentence with only lowercase letters, print the same sentence with the
#  first letter of every word capitalized. For example, if you were given "Turing is the best", 
# return "Turing Is The Best" instead!

# Overall goal: To print a string with every word's first letter capitalized (sounds easy but was tougher than anticipated)

# Pseudocode: We will start with a string. I tried to find a method that would just capitalize every word, but couldn't
# So, my other option was to turn the string into an array and then act on each new element in the array
# Then return it to a string.
# So start with a string, convert it to an array, act on .each element(capitalizing the first letter), then return to a string
# The method to convert a string to an array I used was `.split` which will split the string by the white space
# Once we have our array we can use the `.each` method to capitalize the first letter of each word
# Then we need to figure out a way to either just print the elements in order or to change the array elements
# back into fully homogenized string. 

# Answer:

# turing_pep_talk = "turing is a pretty darn good school. at least it seems that way to me so far!"

# pep_talk_array = turing_pep_talk.split

# pep_talk_array.each do |word|
#   print "#{word} ".capitalize
# end


#================================================================================================#

# 1. Write a method or function that determines how much a person will [pay in taxes in the United 
# States](https://www.irs.gov/newsroom/irs-provides-tax-inflation-adjustments-for-tax-year-2022) 
# based on their annual income. The method or function should accept a number representing the 
# individual's annual income as an argument and return the amount they will owe in taxes for 
# that year.

# Overall goal- create method that determines amount to pay in taxes
# - needs to accept their annual income as an argument, return an amount to pay

# Marginal Rates: For tax year 2022, the top tax rate remains 37% for individual single taxpayers with incomes greater than $539,900 ($647,850 for married couples filing jointly).
# The other rates are:
# 35%, for incomes over $215,950 ($431,900 for married couples filing jointly);
# 32% for incomes over $170,050 ($340,100 for married couples filing jointly);
# 24% for incomes over $89,075 ($178,150 for married couples filing jointly);
# 22% for incomes over $41,775 ($83,550 for married couples filing jointly);
# 12% for incomes over $10,275 ($20,550 for married couples filing jointly).
# The lowest rate is 10% for incomes of single individuals with incomes of
#  $10,275 or less ($20,550 for married couples filing jointly).

# the amount they pay will be based on their annual income. if statements will most likely be the most appropriate

# Overall goal:create method that determines amount to pay in taxes
# - needs to accept their annual income as an argument, return an amount to pay

# Pseudocode: We need to define a method that accepts income as an input
# that will then, based on the specific amount, tell us the percentage that must be applied to the original input
# after that information is determined, we need to do an equation on the income with the apporpriate percentage
# so, a method with an input that has a series of if statements based on the income amount and multiplied by a percentage
# the question is asking for that number to be returned. Not sure if that means a "return value" or if it should be printed
# Guess we can do both pretty easily.

# Answer:


# def tax(income)
#     if income >=215950
#         return income * 0.35   
#     elsif income >= 170050
#         return income * 0.32
#     elsif income >= 89075
#         return income * 0.24
#     elsif income >= 41775
#         return income * 0.22
#     elsif income >= 10275
#         return income * 0.12
#     else 
#         income * 0.10
#     end
# end

# p tax(77000)
# p tax(200000)
# p tax(9000)
# p tax(300000)
# p tax(12000)

