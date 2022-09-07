require_relative '../setup'

# https://edgeguides.rubyonrails.org/active_record_basics.html#creating-active-record-models
puts "Exercise 1"
puts "----------"

richmond = Store.create(name: "Burnaby", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
gastown = Store.create(name: "Burnaby", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count