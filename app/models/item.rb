class Item < ApplicationRecord
    belongs_to :recipes
    validates :name, presence: true

    def self.search(search)
        if search
            recipe = Recipe.find_by(name: search)
            if recipe
                self.where(title: recipe)
            else
                Recipes.all
            end
        else
            Recipes.all
        end
    end
end