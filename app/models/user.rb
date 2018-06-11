class User < ApplicationRecord
  enum gender: { male: 0, female: 1 }
  belongs_to :loyalty_account, class_name: 'Loyalty::Account'
end
