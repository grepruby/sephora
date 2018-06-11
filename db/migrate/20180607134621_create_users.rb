class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :gender
      t.string :country
      t.integer :loyalty_account_id, null: false

      t.timestamps
    end
    add_index :users, :email
    add_index :users, :loyalty_account_id
  end
end
