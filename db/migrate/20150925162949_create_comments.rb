class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :comment, null: false
    	t.datetime :date_time
    	
      t.timestamps null: false
    end
  end
end
