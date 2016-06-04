User.delete_all
Recipe.delete_all

# jacob = User.new(
#   email: "ja@cob.com",
#   password: "abc123"
# )

# amber = User.new(
#   name: "Amber",
#   email: "am@ber.com",
#   password: "abc123",
#   photo_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwiOzMP92I3NAhVW3GMKHXZIDX8QjBwIBA&url=http%3A%2F%2Fcdn.akc.org%2Fakcdoglovers%2FCavalierKingCharlesSpaniel_hero_-_Copy.jpg&psig=AFQjCNFFiu0dO3uLfGPi-LwttG9eWtZfNA&ust=1465106448578372",
#   about_me: "Hi, I'm Amber.  I like my husband, Jacob.")
# puts jacob.errors.full_messages
# puts amber.errors.full_messages

bacon = Recipe.new(
  description: "it's bacon",
  cooking_instruction: "you fry it"
)
bacon.save

eggs = Recipe.new(
  recipe_name: "fried eggs",
  description: "eggs that are fried",
  cooking_instruction: "you fry the eggs",
  photo_url: "http://i.stack.imgur.com/ZuAmS.jpg",
  prep_time: "10 min",
  cook_time: "5 min",
  total_time: "15 min"
)
eggs.save

puts bacon.errors.full_messages
puts eggs.errors.full_messages
