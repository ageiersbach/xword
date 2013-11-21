class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.integer :word_id
      t.string :definition

      t.timestamps
    end
  end
end
