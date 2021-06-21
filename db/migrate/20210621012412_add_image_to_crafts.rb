class AddImageToCrafts < ActiveRecord::Migration[6.1]
  def change
    add_column :crafts, :image_url, :string
  end
end
