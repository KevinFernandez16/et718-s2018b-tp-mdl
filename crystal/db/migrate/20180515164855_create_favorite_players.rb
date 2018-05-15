class CreateFavoritePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_players do |t|
      t.string :Stats
      t.string :Club
      t.string :Nationality

      t.timestamps
    end
  end
end
