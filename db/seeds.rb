50.times do |number|
  puts "Creating article number #{number}"
  Article.create(
    title: Faker::Games::HalfLife.location,
    content: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam, perspiciatis pariatur adipisci a consequatur quis velit distinctio non, numquam modi ut veniam? Ratione quam consequatur necessitatibus id repellat perferendis odit.'
  )
end
