# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
id =  "50ef8d02"
key = "687a180e2e77b109bf7fb2a976417870"
type_of_food = "vegetarian"

recipies = `curl -H "X-Yummly-App-ID: #{id}" -H "X-Yummly-App-Key: #{key}"  http://api.yummly.com/v1/api/recipes?q=#{type_of_food}`
recipies = JSON.parse(recipies)

recipies["matches"].each do |recipie|
  
  
  
  r = Recipie.new( recipie.except("attributes").except("id")  )  
  r.recipe_id = recipie["id"]
  r.save
end

