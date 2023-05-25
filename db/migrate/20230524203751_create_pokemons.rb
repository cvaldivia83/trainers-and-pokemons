class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image_url
      t.references :trainer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
