class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses |t|
      t.belongs_to  :round
      t.belongs_to  :card

      t.timestamps
    end
  end
end
