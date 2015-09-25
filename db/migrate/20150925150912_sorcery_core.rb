class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt

      #Jobbed out specific fields
      t.string :first_name, :null => false
      t.string :last_name, :null => false

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end