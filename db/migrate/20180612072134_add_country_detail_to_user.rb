class AddCountryDetailToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :country_detail, :jsonb
  end
end
