# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



20.times do |x|
  Blog.create(title: Faker::Name.title, sub_heading: Faker::Lorem.sentence(3), body: Faker::Lorem.paragraph(100));
end


# first post
Blog.create(title: "Hello World", sub_heading: "Giving Back - or at least an attempt at doing so", body: "<p>As I continue to navigate the terrain of the web development world, one of the things that I have really loved is how a lot of the people associated with said world help each other.</p><p>How so?</p><p>By continuing to promote and contribute to the idea of open source. Incase you don’t know what this is – basically it means a model (or philosophy if you will) where an individuals product is available to everyone else. Within web development specifically, this usually takes the shape of individuals making their code freely available over the Internet. In this way others can view and learn from it. 
</p><p>Even more specifically though, I have benefited tremendously when trying to learn new concepts, languages, frameworks etc. from blogging sites and tutorials, similar to the one I have created – as of today (yay!). As I have learned a lot from others within the web development world, I think it is only fair to give back – and share what I have learned. 
</p><p>A lot of what I will share may be trivial to a lot of people, or may not be up to the standards of advanced programmers. For this reason I would appreciate any constructive criticism, and or comments about any of the things I post.
</p><p>That being said, as a closing statement to henceforth begin a series of (hopefully) regular blog posts, I would like to say:
</p><p>‘Hello World!’</p>")

