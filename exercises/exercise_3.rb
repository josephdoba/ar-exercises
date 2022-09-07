require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

puts "there are #{Store.count} store(s)"

# https://edgeguides.rubyonrails.org/active_record_basics.html#delete
@store3 = Store.find_by(id: 3)
@store3.destroy

puts "there are #{Store.count} store(s)"