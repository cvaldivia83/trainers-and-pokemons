class PokemonTag < ApplicationRecord
  belongs_to :tag
  belongs_to :pokemon
  validates :tag, uniqueness: { scope: :pokemon, message: 'already added' }
end
