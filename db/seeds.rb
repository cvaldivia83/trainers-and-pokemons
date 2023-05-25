puts 'Cleaning DB...'
Trainer.destroy_all
PokemonTag.destroy_all
Pokemon.destroy_all
Tag.destroy_all

puts 'Creating trainers...'

ash = Trainer.create!(
  name: 'Ash',
  banner_url: 'https://epipoca.com.br/wp-content/uploads/2022/04/ash-pokemon-jornadas-24042022.jpg'
)

misty = Trainer.create!(
  name: 'Misty',
  banner_url: 'https://1.bp.blogspot.com/-V6Ol_8odVPk/YEeIBh4jMGI/AAAAAAAAs4E/-030GXWvVdg0zGIwGcpmunokEmre7n7lgCLcBGAsYHQ/s1400/misty_pokemon.jpg'
)

names = %w(Normal Fire Water Grass Flying Fairy Poison Electric Ground Rock Physic Ice Bug Steel Dragon Dark)

puts 'Creating tags...'

names.each do |name|
  Tag.create!(name: name)
end

puts 'Creating pokemons...'

Pokemon.create!(
  name: "Pikachu",
  image_url: "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/025.png",
  trainer: ash
)

Pokemon.create!(
  name: "Regirock",
  image_url: "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/377.png",
  trainer: ash
)

Pokemon.create!(
  name: "Quaxwell",
  image_url: "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/913.png",
  trainer: misty
)



puts 'Finished! zo/'
