class Store < ActiveRecord::Base
  # https://edgeguides.rubyonrails.org/active_record_basics.html#validations
  # https://edgeguides.rubyonrails.org/active_record_validations.html#numericality

  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :check_mens_or_womens_apparel

  def check_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:check_mens_or_womens_apparel, "Cannot have both men and womens lines set to false. One must be true")
    end
  end


end
