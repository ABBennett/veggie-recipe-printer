# Run the code. Change it so that it looks like the required output.

require 'erb'
require "pry"

recipe = {
  name: "Roasted Brussels Sprouts",
  ingredients: [
    "1 1/2 pounds Brussels sprouts",
    "3 tablespoons good olive oil",
    "3/4 teaspoon kosher salt",
    "1/2 teaspoon freshly ground black pepper"
  ],
  directions: [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
  ]
}

recipe_title = "RECIPE: #{recipe[:name]}"

recipe_ingredients = "\nIngredients\n-----------"
recipe[:ingredients].each do |ingredient|
  recipe_ingredients += "\n- #{ingredient}"
end

recipe_directions = "\nDirections\n-----------"
recipe[:directions].each_with_index do |direction, index|
  recipe_directions += "\n#{index + 1}. #{direction}"
end

recipe_template = "

<%= '=' * recipe_title.length %>
<%= recipe_title %>
<%= '=' * recipe_title.length %>

<%= recipe_ingredients %>

<%= recipe_directions %>

"



erb = ERB.new(recipe_template)
puts erb.result
# puts erb.result
# puts "="*recipe_title.length
# puts recipe_title
# puts "="*recipe_title.length
# puts
# puts recipe_ingredients
# puts recipe_directions
