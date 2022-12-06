class CreateHalfLives < ActiveRecord::Migration[7.0]
  def change
    create_table :half_lives do |t|
      t.string :character
      t.string :enemy
      t.string :location

      t.timestamps
    end
  end
end
