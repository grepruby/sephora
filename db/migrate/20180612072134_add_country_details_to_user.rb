class AddCountryDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :country_details, :jsonb
  end
end
