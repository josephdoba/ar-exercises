require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# https://edgeguides.rubyonrails.org/active_record_basics.html#creating-active-record-models

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
never_go_to_surrey_simba = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true) # meme reference: http://www.quickmeme.com/img/31/316a03cc9f5c0336dde0b27f42ebb0c790dc8424ec8499d351f66fc4786b5503.jpg

# https://edgeguides.rubyonrails.org/active_record_basics.html#read
# https://stackoverflow.com/questions/10773160/searching-from-a-range-of-ids-in-activerecord
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.map { |shop| puts "the store name is #{shop.name} and their annual revenue is: #{shop.annual_revenue}"}

@womens_stores = Store.where(womens_apparel: true, annual_revenue: 0..1000000)
@womens_stores.map { |shop| puts "the store name is #{shop.name} and their annual revenue is: #{shop.annual_revenue}"}