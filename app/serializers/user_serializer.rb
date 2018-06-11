# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :first_name, :last_name, :age,
             :gender, :country, :loyalty_account_id

  attributes :loyalty_level do |object|
    object.loyalty_account&.level
  end

  attributes :country do |object|
    RestCountry.find_by_alpha_code(object.country).demonym || object.country
  end
end
