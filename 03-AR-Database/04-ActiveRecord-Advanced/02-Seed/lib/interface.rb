require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

# TODO: build your interface with login and CRUD tasks on the posts
def ask_and_get(param)
  puts "What is the #{param} of your piece of news?"
  gets.chomp
end

while true

  logged_in = false

  begin
    puts "Please login with your <id>"
    id = gets.chomp.to_i
    begin
      user = User.find(id)
    rescue
      puts "login error"
    end until user
  end

  puts "Hey #{user_name} what do you want to do?"
  puts "1 Create a post"
  puts "2 Read posts"
  puts "3 Update a post"
  puts "4 Delete a post"
  puts "5 to exit program"


  choice = gets.chomp.to_i

  case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source_url")
    rating = ask_and_get("rating")
    post = {name: name, source_url: source_url, date: Time.new rating: rating }
    user.posts.create(post)
  when 2
   user.posts.each do |post|
    puts "#{post_id}, #{post.name}, #{post.date}, #{post.source_url}, #{post.rating}"





