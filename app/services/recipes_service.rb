require 'rest-client'

module RecipesService

    def self.get_recipes(items)
        #recipes = items.join(",")
        headers = {'Content-Type': 'application/json'} 
        url = "https://www.food2fork.com/api/search?key=#{Rails.application.credentials.api[:api_key]}&q=#{items}"
        JSON.parse(RestClient.get(url, headers).body)["recipes"]
    end
end