require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
puts "Total revenue is #{@total_revenue}"
@average_revenue = Store.average(:annual_revenue)
puts "Average revenue is #{@average_revenue}"

@number_of_stores_over_million = Store.where("annual_revenue > 1000000").count
puts "Number of stores over 1M is #{@number_of_stores_over_million}"