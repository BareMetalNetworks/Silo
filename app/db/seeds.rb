# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


produces = Produce.create([
{
name: "Lettuce",
image_url: "portfolio/lettuce-full.jpg",
thumb: "portfolio/lettuce-thumb.jpg",
description: "We offer several tender delicious varieties of lettuce. Available in spring throughout the summer",
available: true,
points: 1.0,
price: 3.0,
},

{
name: "Cabbage",
image_url: "portfolio/cabbage-full.jpg",
thumb: "portfolio/cabbage-thumb.jpg",
description: "Crunchy and super tasty cabbages in purple or green varieties",
available: true,
points: 1.0,
price: 3.0,
},

{
name: "Carrots",
image_url: "portfolio/carrots-full.jpg",
thumb: "portfolio/carrots-thumb.jpg",
description: "We have the very freshest carrots, available in several sizes and colors. All of them very sweet and delicious",
available: true,
points: 1.0,
price: 3.0,
},

])