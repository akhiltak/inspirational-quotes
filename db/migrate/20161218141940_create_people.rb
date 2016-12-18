class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name, null: false, index: true
      t.datetime :born_on
      t.integer :profession, default: 0
      t.datetime :died_on
      t.string :country

      t.timestamps
    end
  end
end
