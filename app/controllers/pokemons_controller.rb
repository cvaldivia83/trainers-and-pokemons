class PokemonsController < ApplicationController
  def create
    @trainer = Trainer.find(params[:trainer_id])
    @pokemon = Pokemon.new(pokemon_params)
    # raise
    @pokemon.trainer = @trainer
    if @pokemon.save
      redirect_to trainer_path(@trainer)
    else
      render 'trainers/show', status: :unprocessable_entity
    end
  end

  def destroy
    # 1. find
    @pokemon = Pokemon.find(params[:id])
    # 2. destroy
    @pokemon.destroy
    # 3. redirect
    redirect_to trainer_path(@pokemon.trainer)
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :image_url)
  end
end
