class PokemonTagsController < ApplicationController

  def new
    # /pokemons/:pokemon_id/pokemon_tags/new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokemon_tag = PokemonTag.new
  end

  def create
    @tags = Tag.where(id: params[:pokemon_tag][:tag])
    @pokemon = Pokemon.find(params[:pokemon_id])
    @tags.each do |tag|
      @pokemon_tag = PokemonTag.new(tag: tag, pokemon: @pokemon)
      @pokemon_tag.save
    end
    redirect_to trainer_path(@pokemon.trainer)
  end
end
