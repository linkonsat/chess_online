class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :wins
      t.integer :losses
      t.integer :ties
      
      t.timestamps
    end
  end
end
