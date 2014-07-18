class ui
   def display
    puts all_recipes.sort
   end

   def ask_for_a_recipe
    puts "name of the recipe"
    name = gets.chomp
    puts  "description of the recipe?"
    description = gets.chomp

    puts "Thank for adding #{name}"
   end

   def ask_to_remove_a_recipe(name)
    puts "which recipe do you want to remove?"
    recipe_to_delete = gets.chomp
  end
end






