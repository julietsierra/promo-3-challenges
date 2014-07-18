require 'csv'

class Cookbook
  def initialize
    @all_recipes = []
    @file_path = "/Users/juliette_sanson/code/julietsierra/promo-3-challenges/02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv"
  end

  def load
  cvs_options = {col_sep: ',', quote_char: '"'}
  CSV.foreach(@file_path) do |row|
    @all_recipes << row
  end


  def save
  CSV.open(@file_path, 'w') do |csv|
    csv << all_recipes
  end

  def add_recipe_to_csv(recipe)
    @all_recipes << recipe
    save
  end

  def remove_recipe_from_csv(recipe)
     @all_recipes = @recipes.delete(recipe)
     csv << [@all_recipes]
     save
  end


