User.delete_all
Recipe.delete_all
Tag.delete_all
Like.delete_all
Comment.delete_all

jacob = User.new(
  name: "Jacob",
  email: "ja@cob.com",
  password: "abc123",
  photo_url: "http://media.lehighvalleylive.com/phillipsburg_impact/photo/jacob-allen-6336f5b2f04c553d.jpg",
  about_me: "Hi, I'm Jacob.  I like food."
)
jacob.save

amber = User.new(
  name: "Amber",
  email: "am@ber.com",
  password: "abc123",
  photo_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwiOzMP92I3NAhVW3GMKHXZIDX8QjBwIBA&url=http%3A%2F%2Fcdn.akc.org%2Fakcdoglovers%2FCavalierKingCharlesSpaniel_hero_-_Copy.jpg&psig=AFQjCNFFiu0dO3uLfGPi-LwttG9eWtZfNA&ust=1465106448578372",
  about_me: "Hi, I'm Amber.  I like food."
)
amber.save
# puts jacob.errors.full_messages
puts amber.errors.full_messages

carnitas = Recipe.new(
  recipe_name: "Carnitas",
  recipe_pic: File.open(File.join(Rails.root, '/app/assets/images/carnitas.jpg')),
  description: "A marinated pork dish that's guaranteed to please.",
  cooking_instruction: "Rinse and dry a 4lb boneless pork shoulder roast.
    Coarsely chop 1 onion, 1 jalapeño, and mince 4 cloves of garlic.
    Place the rost in a large Dutch oven, and cover with the chopped veggies.
    Pour the juice of two oranges over the roast and veggies.
    Cook in the oven for 4 hours at 300 degrees, removing to baste every hour.
    After cooking in the oven, remove the roast, separate the fat from the meat, and tear the meat into bite-sized chunks.
    Pour the juices and any bits of veggies into a small/medium saucepan, bring to a boil, and reduce the heat to simmer.
    Place the chunks of meat into a skillet (cast-iron works best) and brown on medium-high heat.
    Once the meat is sufficiently browned, add the reduced juices to the meat for further reduction.
    Once the meat has reached the desired juiciness, the carnitas are finished.
    Serve in a burrito or on tacos with your favorite salsa and toppings!",
  prep_time: "30 min",
  cook_time: "4 hr",
  total_time: "4 hr, 30 min",
  user: jacob
)
carnitas.save

burgers = Recipe.new(
  recipe_name: "Diner-style Burgers",
  recipe_pic: File.open(File.join(Rails.root, '/app/assets/images/diner_burgers.jpg')),
  description: "An easy way to make burgers look and taste like they came from a restaurant.",
  cooking_instruction: "Bring refrigerated beef to room temperature by allowing it to sit on the counter for at least 30 min.
    Form ground beef into 1/2 lb patties.  Be sure the patties are very wide, as they will likely shrink during cooking.
    Pre-heat skillet to high/medium-high heat (cast-iron works best).  When the skillet is hot, generously salt and pepper the top side of the meat.
    Add a pad of butter to the skillet, and add the patties seasoned-side-down.
    Using a thumb or forefinger, carefully make a small indention in the center of the patty.
    This ensures the meat will not swell up and become a ball as it cooks.
    After making the indention, generously salt and pepper the patty.
    After 5 min of cooking the first side, carefully flip the patty.
    If the first side is not cooked to desired darkness, do not flip, but allow to cook for another minute or two.
    Once both sides have cooked to desired temperature, remove and serve on a bun with favorite toppings or bed of greens!",
  prep_time: "30 min",
  cook_time: "10 min",
  total_time: "35 min",
  user: jacob
)
burgers.save

breakfast_tacos = Recipe.new(
  recipe_name: "Breakfast Tacos",
  recipe_pic: File.open(File.join(Rails.root, '/app/assets/images/breakfast_tacos.jpg')),
  description: "Hearty breakfast tacos that make any morning feel like a fiesta.",
  cooking_instruction: "Start by cookin bacon in a cast-iron skillet.  As the bacon cooks, preheat oven to 450 degrees.
    Once the bacon is cooked to desired crispiness, remove and set aside.
    Discard a small portion of the bacon grease, and add a coursely chopped potato to the skillet. Season with salt, cumin, and garlic powder.
    Place the skillet in the oven to cook for about 45 min.
    When there are 15 min remaining, add 1/4 of a coarsely chopped onion to the potatos.
    When potatoes are golden brown, remove from oven and set aside.
    Cook eggs as desired for the breakfast tacos.
    When all elements are complete, assemble ingredients onto tortillas and top with salsa, cheese, or any other desired condiments, and enjoy!",
  prep_time: "20 min",
  cook_time: "45 min",
  total_time: "1 hr, 5 min",
  user: amber
)
breakfast_tacos.save
# bbq = Tag.new(word: "#BBQ")
# eggs.tags << bbq
# bbq.save
# puts eggs.tags[0].word
# puts bbq.errors.full_messages


# salt = Ingredient.new(name: "salt")
# salt.save
# eggs.ingredients << salt


# like = Like.new(tick: 1)
# like.save
# eggs.likes << like

# comment = Comment.new(text: "eggs, yummmmmmmmmm!")
# comment.save
# amber.comments << comment
# eggs.comments << comment
# amber.recipes << eggs
# jacob.recipes << bacon
# amber.save
# jacob.save
# eggs.save
# puts salt.errors.full_messages
# puts bacon.errors.full_messages
# puts eggs.errors.full_messages
puts amber.errors.full_messages
