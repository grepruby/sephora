class User < ApplicationRecord
  enum gender: { male: 0, female: 1 }
  belongs_to :loyalty_account, class_name: 'Loyalty::Account'
  before_validation :set_country_details

  def set_country_details
    self.country_details = RestCountry.find_by_alpha_code(country)
  end
end
