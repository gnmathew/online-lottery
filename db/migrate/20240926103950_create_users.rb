class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :username
      t.integer :role
      t.string :phone
      t.integer :coins
      t.float :total_deposit
      t.integer :children_members

      t.timestamps
    end
  end
end
