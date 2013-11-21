class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name
      t.integer :num_chars

      t.timestamps
    end
  end
end
