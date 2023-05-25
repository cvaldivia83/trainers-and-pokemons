class Pokemon < ApplicationRecord
  belongs_to :trainer
  has_many :pokemon_tags, dependent: :destroy
  has_many :tags, through: :pokemon_tags
  validates :name, :image_url, presence: true
end
