class ChangeDataTypeForIsbn < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.text :summary

      t.timestamps
    end
  end
end
