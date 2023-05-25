class Tag < ApplicationRecord
  has_many :pokemon_tags, dependent: :destroy
  has_many :pokemons, through: :pokemon_tags
end
