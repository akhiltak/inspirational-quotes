class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :text, null: false
      t.integer :genre, default: 0
      t.references :author, index: true
      t.integer :status, default: 0

      t.timestamps
    end
    add_index :quotes, :genre
    add_foreign_key :quotes, :people, column: :author_id
  end
end
