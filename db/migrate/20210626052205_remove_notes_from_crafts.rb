class RemoveNotesFromCrafts < ActiveRecord::Migration[6.1]
  def change
    remove_column :crafts, :notes, :string
  end
end
