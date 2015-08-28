# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#     # Faker data

#     # create 20 blogs
#     20.times do |x|
#       Blog.create(title: Faker::Name.title, sub_heading: Faker::Lorem.sentence(3), body: Faker::Lorem.paragraph(100));
#     end

#     #create 5 tags
#     5.times do |x|
#       Tag.create(name: Faker::Commerce.department(1))
#     end

#     #associate each blog with 3 tagss
#     @fakeblogs = Blog.where.not(title: "Hello World")
#     @fakeblogs.each do |x|
#       3.times do 
#         x.tagged_blogposts.create(tag: Tag.all.sample);
#       end
#     end

#     #real blog
#     @realblog = Blog.find_by title: "Hello World"
#     @realblog.tags.create(name: "General")

# when "production"
#     @realblog = Blog.find_by title: "Hello World"
#     @realblog.tags.create(name: "General")
# end








# Real Data

# first blog post

# Blog.create(title: "Hello World", sub_heading: "Giving Back - or at least an attempt at doing so", body: "<p>As I continue to navigate the terrain of the web development world, one of the things that I have really loved is how a lot of the people associated with said world help each other.</p><p>How so?</p><p>By continuing to promote and contribute to the idea of open source. Incase you don’t know what this is – basically it means a model (or philosophy if you will) where an individuals product is available to everyone else. Within web development specifically, this usually takes the shape of individuals making their code freely available over the Internet. In this way others can view and learn from it. 
# </p><p>Even more specifically though, I have benefited tremendously when trying to learn new concepts, languages, frameworks etc. from blogging sites and tutorials, similar to the one I have created – as of today (yay!). As I have learned a lot from others within the web development world, I think it is only fair to give back – and share what I have learned. 
# </p><p>A lot of what I will share may be trivial to a lot of people, or may not be up to the standards of advanced programmers. For this reason I would appreciate any constructive criticism, and or comments about any of the things I post.
# </p><p>That being said, as a closing statement to henceforth begin a series of (hopefully) regular blog posts, I would like to say:
# </p><p>‘Hello World!’</p>")


#second post

# Blog.create(title:"test123", sub_heading:"sapf", body: "checkwer")

#   Blog.create(title:"Implementing Real-Time Search with Ruby-on-Rails", sub_heading: "PART 1 - Setup ('Scaffold + Faker + Bootstrap')", body:"<h3>Intro</h3>

# So you generated a new rails scaffold. Now what ? Apart from the basic CRUD functionality - it seems a bit bare. Lets make it a little more exciting !

# In this tutorial, I want to walk you through the steps I took to add a 'real time search' in my applicaiton using Ruby on Rails 4, with the help of jQuery and AJAX. I had previously made something similar following a tutorial online, using <a href=\"http://facebook.github.io/react/\">React</a>. 
# <a href=\"http://tutorialzine.com/2014/07/5-practical-examples-for-learning-facebooks-react-framework/\">Heres what this looks like using REACT JS</a> - scroll to '3.Real Time Search'. The Angular JS version of this same thing can be viewed <a href=\"http://tutorialzine.com/2013/08/learn-angularjs-5-examples/#4-instant-search\">here</a>. 


# Now, here is a <a href=\"http://rails-real-time-search.herokuapp.com/\">live demo</a> of the version we will be making using only Ruby-on-Rails, with the help of a little jQuery. View all the source code <a href=\"https://github.com/tkhan003/Realtime-Search-Rails\">here</a>

# Enough talking, lets get to it!

# Oh, one more thing - The first part below will be pretty basic stuff, helping to get everything setup, you can skip all this stuff and go ahead to the next section <a href=\"/blogs/6\">here</a> if you want.

# <h3> Create New Project / Generate Scaffold </h3>

# Assuming you have Rails working on your machine, go ahead and create a new rails project and run the rails scaffold command - Im going to be creating a books scaffold for the purpose of this tutorial:

# <code>
# $ rails new realtime-search<br>
# $ rails g scaffold: books name:string body:text 
# </code>


# Once this is done, go ahead and run the following commands, to create and migrate your database, and fire up your rails server!

# <code>
# $ rake db:create<br>
# $ rake db:migrate<br>
# $ rails server
# </code>

# Once your up and running, open up your newly created rails application and head over to your routes.rb file. Inside, set your root path (based on the scaffold you generated - or use 'books' if you are following along):

# ```ruby
#     # /config/routes.rb
    
#     root \"books#index\"
# ```


# <h3>Optional Step: Use 'Faker' gem to generate fake data to work with </h3>
# Let use the <a href=\"https://github.com/stympy/faker\">faker </a> gem to add a bunch of fake data that we can work with. If you arent familiar with this gem, it just generates all kinds of random data that you can work with. This is one of my favourite gems, and I encourage you to use it in your future projects! 

# Anyways, head over to your gem file add add faker 

# ```
#     # /Gemfile

#     gem 'faker'
# ```

# then go ahead and run the bundle install command

# <code>
# $ bundle install
# </code>

# If your server is still running, you'll need to stop it here (on mac - control +c ) and re-start it so itll load up and start utilizing the gem you just installed.


# Now, lets go to the seeds.rb file to fill up our database with some book data using this gem.

# ```
#     # /db/seeds.rb
    
#     20.times do 
#       Book.create(name: Faker::Name.title, body: Faker::Lorem.paragraph)
#     end
# ```

# This will generate 20 fake books for us. After this, you need to run the following command to actually seed your database:

# <code>
# $ rake db:seed
# </code>


# In your application, you should have a 20 books created for you. Maybe youll even get a good laugh (or two) from some of the stuff that was generated - gotta love faker! 


# <h3>Optional step: Adding <a href=\"http://getbootstrap.com/\">Bootstrap</a></h3> 

# Lets make our application look a little more pretty using bootstrap! Again, this part is optional - if your just here for the search, just move on to the next section.

# Lets add the 'twitter-bootstrap-rails' <a href=\"https://github.com/seyhunak/twitter-bootstrap-rails\">gem</a>

# In your gemfile add:

# ```
#     #/Gemfile
    
#     gem \"twitter-bootstrap-rails\"
# ```
# then run:

# <code>
# $ bundle install
# </code>

# After this, following  <a href=\"https://github.com/seyhunak/twitter-bootstrap-rails\"> gem installation instructions</a>, run the genrator command:  

# <code>
# $ rails generate bootstrap:install static
# </code>


# Again, make sure to stop your server (control+c on mac) and re-start it again. You should now have bootstrap integrated into your project


# Now lets get to coding!

# Inside your index.html.erb file, which should already contain about 30 lines of code (generated by rails scaffold ) lets wrap eveything within a div having a class of container. This is a bootstrap class - which will put margins on the side of our book list and make everything more centered.

# Also add the bootstrap classes 'table', 'table-bordered', and 'table-striped' to your html table tag. 'table-bordered' and 'table-striped' are optional - but I personally like the way they make my tables look, but you dont have to add them if you like the look without. Play around with them, and pick a combination you like!

# Your index file should look something like this:

# ```

# # /views/books/index.html.erb

# <div class=\"container\">
# <p id=\"notice\">\<\%\= notice \%\></p>
# \<\%\= link_to 'New Book', new_book_path \%>

# <h1>Listing Books</h1>

#   <table class=\"table table-bordered table-striped\">
#     <thead>
#       <tr>
#         <th>Name</th>
#         <th>Body</th>
#         <th colspan=\"3\"></th>
#       </tr>
#     </thead>

#     <tbody>
#       <% @books.each do |book| %>
#         <tr>
#           <td><%= book.name %></td>
#           <td><%= book.body %></td>
#           <td><%= link_to 'Show', book %></td>
#           <td><%= link_to 'Edit', edit_book_path(book) %></td>
#           <td><%= link_to 'Destroy', book, method: :delete,
#               data: { confirm: 'Are you sure?' } %></td>
#         </tr>
#       <% end %>
#     </tbody>
#   </table>

# </div>

# ```

# Now that we have our scaffold looking nicer, and have test data we can work with, lets get to the fun stuff, and <a href=\"/blogs/6\">implement the search!</a>
           
# <hr>
# If you have any questions, comments, or see any errors - please dont hesitate to leave a comment below!


# ")

# Blog.create(title:"Implementing Real-Time Search with Ruby-on-Rails", sub_heading: "PART 2-Implementing the Search", body: "Stay tuned - Ill be posting the rest of this very soon!")



# Blog.create(title:"image text23", body: "sdfafsafsjf;afjf

# <img src=\"/assets/html.png\" />

#   ")

# #third post

# Blog.create(title:"Implementing Real-Time Search with Ruby-on-Rails", sub_heading: "PART 2 - Search ", body:" ");


# genereal
@tag1=Tag.find_by(name:"General")

# ror
@tag2=Tag.find_by(name:"Ruby-on-Rails");

# tutorial
@tag3=Tag.find_by(name:"Tutorial");

# programming
@tag4=Tag.find_by(name:"Programming");

#jQuery
@tag5=Tag.find_by(name:"jQuery");




@tagged_blogpost1=TaggedBlogpost.create(tag_id:@tag1.id, blog_id:1)

@tagged_blogpost2=TaggedBlogpost.create(tag_id:@tag2.id, blog_id:5)
@tagged_blogpost1=TaggedBlogpost.create(tag_id:@tag3.id, blog_id:5)
@tagged_blogpost1=TaggedBlogpost.create(tag_id:@tag4.id, blog_id:5)
@tagged_blogpost1=TaggedBlogpost.create(tag_id:@tag5.id, blog_id:5)

@tagged_blogpost2=TaggedBlogpost.create(tag_id:@tag2.id, blog_id:6)
@tagged_blogpost1=TaggedBlogpost.create(tag_id:@tag3.id, blog_id:6)
@tagged_blogpost1=TaggedBlogpost.create(tag_id:@tag4.id, blog_id:6)
@tagged_blogpost1=TaggedBlogpost.create(tag_id:@tag5.id, blog_id:6)






