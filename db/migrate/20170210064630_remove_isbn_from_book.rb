class RemoveIsbnFromBook < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :isbn, :integer
  end
end
