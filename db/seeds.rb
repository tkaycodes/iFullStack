# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Faker data

# 20.times do |x|
#   Blog.create(title: Faker::Name.title, sub_heading: Faker::Lorem.sentence(3), body: Faker::Lorem.paragraph(100));
# end

# 5.times do |x|
#   Tag.create(name: Faker::Commerce.department(1))
# end

# @fakeblogs = Blog.where.not(id:21)
# @fakeblogs.each do |x|
#   3.times do 
#     x.tagged_blogposts.create(tag: Tag.all.sample);
#   end
# end




# Real Data

# first blog post

Blog.create(title: "Hello World", sub_heading: "Giving Back - or at least an attempt at doing so", body: "<p>As I continue to navigate the terrain of the web development world, one of the things that I have really loved is how a lot of the people associated with said world help each other.</p><p>How so?</p><p>By continuing to promote and contribute to the idea of open source. Incase you don’t know what this is – basically it means a model (or philosophy if you will) where an individuals product is available to everyone else. Within web development specifically, this usually takes the shape of individuals making their code freely available over the Internet. In this way others can view and learn from it. 
</p><p>Even more specifically though, I have benefited tremendously when trying to learn new concepts, languages, frameworks etc. from blogging sites and tutorials, similar to the one I have created – as of today (yay!). As I have learned a lot from others within the web development world, I think it is only fair to give back – and share what I have learned. 
</p><p>A lot of what I will share may be trivial to a lot of people, or may not be up to the standards of advanced programmers. For this reason I would appreciate any constructive criticism, and or comments about any of the things I post.
</p><p>That being said, as a closing statement to henceforth begin a series of (hopefully) regular blog posts, I would like to say:
</p><p>‘Hello World!’</p>")


#second post

# Blog.create(title:"Implementing Real-Time Search with Ruby-on-Rails", sub_heading: "PART 1 - Setup ('Scaffold + Faker + Bootstrap')", body:"<h3>Intro</h3>

# So you generated a new rails scaffold. Now what ? Apart from the basic CRUD funcionality - it seems a bit bare. Lets make it a little more exciting !

# In this tutorial, I want to walk you through the steps I took to add real time search functionarlity in my applicaiton using Ruby on Rails 4, with the help of Jquery and AJAX. I had previously made something similar following a tutorial online using <a href=\"http://facebook.github.io/react/\">React</a>. An example of this functionarlity can be seen <a href=\"http://tutorialzine.com/2014/07/5-practical-examples-for-learning-facebooks-react-framework/\">here</a> (Just scroll down to 3.Real Time Search). Another example doing the same thing using Angular JS can be seen <a href=\"http://tutorialzine.com/2013/08/learn-angularjs-5-examples/#4-instant-search\">here</a>. In both cases, front end javascript frameworks were used - I wanted to stick to Rails and see if I could get it to work, and it worked !
# You can view the live demo <a href=\"http://rails-real-time-search.herokuapp.com/\">here</a>. All the code can be viewed <a href=\"https://github.com/tkhan003/Realtime-Search-Rails\">here</a>
# <p>
# You can just play around with the code and add this to your own app(s), or keep reading for a play-by-play and start from scratch. I will also be walking through the process of using faker to generate fake data, and adding bootstrap to make your resutl look prettier. You can skip these sections if you want.
# </p>

# <h3> Create New Project / Generate Scaffold </h3>
# 1. Assuming you have Rails working on your machine, go ahead and create a new rails project and run the rails scaffold command - Im going to be creating a books scaffold for the purpose of this tutorial:

# <pre> 
#     rails new realtime-search
#     rails g scaffold: books name:string body:text 
# </pre>

# Once this is done, go ahead and run the create db, and migrate db commands, and go ahead and fire up your rails server !

# <pre>
#     rake db:create
#     rake db:migrate
#     rails server
# </pre>

# Once your up and running, head over to your routes.rb file, and set the root path (based on the scaffold you generated - or books if you are following along):

# <pre> 
#     #/config/routes.rb
    
#     root \"books#index\"
# </pre>


# <h3>Optional: Use Faker to gnerate bogus (and funny) data </h3>
# Use <a href=\"https://github.com/stympy/faker\">faker </a> gem to add a bunch of data. If you dont know what faker it, it is one of my favoute gems, it will generate all kinds of bogus data, which is a) fun and a lot of times you get funny results which is always good, and b) useful for when you need to test out your applications with lots of data and you dont have the creative capacity or will to power your way through generating 20 unique addresses. 

# Anyways, head over to your gem file add add faker 

# <pre>
#     #/Gemfile
# gem 'faker'
# </pre>

# then go ahead and run bundle install
# <pre>
#     bundle install
# </pre>

# If you are running your server, you'll need to stop it here (mac - control +c ) and re-run it so itll load up the gem you just installed.

# Now, go to your seeds.rb file to fill up your database with some book data.

# <pre>
#     # /db/seeds.rb
    
#     20.times do 
#       Book.create(name: Faker::Name.title, body: Faker::Lorem.paragraph)
#     end
# </pre>

# After this, you need to run the following command:
# <pre>
#     rake db:seed
# </pre>

# This will load up any code you have in your seeds.rb file, and add it to your database.

# <p>
# Now run your server again, you should have a 20 books created for you. Maybe you got even a good laugh from some of the titles that were genrated - gotta love faker! 
# </p>

# <h3>Optional - adding <a href=\"http://getbootstrap.com/\">bootstrap</a></h3> 

# Now, lets make our application look a little more pretty using bootstrap! Again, this part is optional - if your just here for the search, keep scrolling !

# Lets add the bootstrap-rails <a href=\"https://github.com/seyhunak/twitter-bootstrap-rails\">gem</a>

# in your gemfile add

# <pre>
#     #/Gemfile
# gem \"twitter-bootstrap-rails\"
# </pre>

# then, run bunndle install

# <pre>
#     bundle install
# </pre>

# after this, following the <a href=\"https://github.com/seyhunak/twitter-bootstrap-rails\"> gem installation instructions</a>, run the genrator  
# <pre>
# rails generate bootstrap:install static
# </pre>

# Make sure to stop your server (control+c on mac) and re-start it again, and you should now have bootstrap integrated

# Now lets get to coding!

# Inside your index.html.erb file, which should already contain about 30 lines of code (genrated by rails scaffold ) lets wrap eveything in a div with a class of container, this is a bootstrap class - it will put margins on the side of our book list and make everything more centered.

# Also add the bootstrap classes table, table-bordered, and table-striped to your table tag. table-bordered and table-striped are optional - but I personally like the way they make my tables look, but you dont have to add them if you like the look without. 

# Your index.html.erb file should now look something like <a href= https://gist.github.com/tkhan003/942405c61d4f5693911a>this.    
# </a>
            
# Now that we have our scaffold looking sexier (shouts out to Bootstrap ), and have test data we can work with, lets implement the search!
              
              

            
# <p>
# Note:
# If anything is unclear, or you have any suggestions, corrections, or any comments in general - please leave a comment below
# </p>")

# #third post

# Blog.create(title:"Implementing Real-Time Search with Ruby-on-Rails", sub_heading: "PART 2 - Search ", body:" ");




