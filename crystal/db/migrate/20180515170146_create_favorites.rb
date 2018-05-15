class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.string :Players
      t.string :Name
      t.string :Club
      t.string :Nationality
      t.string :Position

      t.timestamps
    end
  end
end
