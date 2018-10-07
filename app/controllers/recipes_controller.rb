class RecipesController < ApplicationController
    def index
        @recipes = RecipesService.search(params[:search])
    end

    private
    def recipes_params
        params.require(:recipe).permit(:name, :title, :search)
    end
end
