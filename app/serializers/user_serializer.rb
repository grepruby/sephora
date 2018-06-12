# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :first_name, :last_name, :age,
             :gender, :country_detail, :loyalty_account_id

  attributes :loyalty_level do |object|
    object.loyalty_account&.level
  end

end
