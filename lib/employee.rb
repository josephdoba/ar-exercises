class Employee < ActiveRecord::Base
  # https://edgeguides.rubyonrails.org/active_record_basics.html#validations
  # https://edgeguides.rubyonrails.org/active_record_validations.html#numericality
  belongs_to :store

  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: { in: 40..200 }

end
