class CreateMyNumbers < ActiveRecord::Migration
  def change
    create_table :my_numbers do |t|
      t.integer :number
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
