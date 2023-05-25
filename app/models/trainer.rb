class Trainer < ApplicationRecord
  validates :name, :banner_url, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  has_many :pokemons, dependent: :destroy
end
