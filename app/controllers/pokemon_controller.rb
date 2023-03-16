class PokemonController < ApplicationController

    # post /pokemon
    def create
        @pokemon = Pokemon.new(pokemon_params)
        if pokemon.save
            render json: @pokemon
        else
            render json: @pokemon.errors, status: :unprocessable_entity
        end
    end

    def pokemon_params
        # recupera la información del body request, en este caso solo queremos
        # el nombre y el nivel actual del pokemon
        params.require(:pokemon).permit(:name, :level)
    end
    # get /pokemon/id
    def show 
        @pokemon = Pokemon.find(params[:id])
        render json: @pokemon
    end
    
    #get 
    def sayMyName
        @pokemon = Pokemon.find(params[:id])
        @pokemon.name
        render json: 'Hello, my name is '+@pokemon.name
    end

end
