# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

file = URI.parse("https://images.unsplash.com/photo-1791394893007-89de13690930?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDE%3D").open
article = Article.new(title: "NES", body: "A great console")

article.photo.attach(io: file, filename: "teletubbiesportal.jpg")
article.save
