class CreateCrafts < ActiveRecord::Migration[6.1]
  def change
    create_table :crafts do |t|
      t.string :name
      t.string :description
      t.date :date_started
      t.date :date_completed
      t.float :price
      t.date :date_sold
      t.string :craft_type
      t.string :notes
      t.string :image_url

      t.timestamps
    end
  end
end
