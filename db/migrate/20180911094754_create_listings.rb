class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :title
      t.string :description
      t.string :response_time
      t.decimal :price

      t.timestamps
    end
  end
end
