class CreateFoodlists < ActiveRecord::Migration
  def change
    create_table :foodlists do |t|
      t.string :name
      t.string :calories

      t.timestamps null: false
    end
  end
end
