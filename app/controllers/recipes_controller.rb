class RecipesController < ApplicationController
  
    def index
        recipes=Recipe.all
        render json: recipes , status: :success
    end
    
      def create
        recipe = Recipe.create!(recipe_params)
        render json: recipe, status: :created
      end
    
      private
    
      def recipe_params
        params.permit(:title, :instructions, :minutes_to_complete)
      end
  
  end