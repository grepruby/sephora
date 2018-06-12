class User < ApplicationRecord
  enum gender: { male: 0, female: 1 }
  belongs_to :loyalty_account, class_name: 'Loyalty::Account'
  before_validation :set_country_detail

  def set_country_detail
    self.country_detail = RestCountry.find_by_alpha_code(country)
  end
end
