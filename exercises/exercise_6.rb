require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# https://edgeguides.rubyonrails.org/active_record_basics.html#creating-active-record-models

@store1.employees.create(first_name: "Thing", last_name: "One", hourly_rate: 100)
@store1.employees.create(first_name: "Thing", last_name: "Two", hourly_rate: 100)
@store1.employees.create(first_name: "Thing", last_name: "Three", hourly_rate: 100)
@store2.employees.create(first_name: "Thing", last_name: "Four", hourly_rate: 100)
@store2.employees.create(first_name: "Thing", last_name: "Five", hourly_rate: 100)