require_relative '../config/application'
require_relative '../models/post'
require_relative '../models/user'

require 'faker'
require 'nokogiri'
require 'open-uri'

user = User.create(
  name:                   Faker::Name.name,
  email:                  Faker::Internet.email,
  password:               password,
  password_confirmation:  password)


data_origin = ENV['from'] || 'local file'
data_url = 'http://news.ycombinator.com/'

puts 'Seeding data for Hackernews based on #{data_url}.'

# TODO: Your code goes here
# 1. create fake users
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users



puts 'Removing data...'
Post.delete_all
User.delete_all
