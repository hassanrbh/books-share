class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :author, :null => false
      t.string :category, :null => false
      t.integer :year , :null => false
      t.boolean :owner, :null => false, :default => true
      t.text :description, :null => false
      t.timestamps
    end
  end
end
