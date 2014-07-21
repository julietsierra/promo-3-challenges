require 'csv'
require_relative "cookbook"
require_relative "controller"
require_relative "router"


class View

  def list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index} - #{recipe.name} #{recipe.description}"
    end
  end

  def add_recipe_name
    puts "what is the name of the new recipe ?"
    return gets.chomp
  end

  def add_recipe_description
    puts "what is the description of your recipe"
    return gets.chomp
  end

  def destroy_recipe
    puts "which recipe would you like to remove:"
    return gets.chomp.to_i
  end

end