class CreatePokemonTags < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
