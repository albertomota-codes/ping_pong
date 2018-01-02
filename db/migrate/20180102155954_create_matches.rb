class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :your_score
      t.integer :their_score
      t.date :played_date
      t.references :opponent, index: true, foreign_key: false

      t.timestamps null: false
    end
  end
end
