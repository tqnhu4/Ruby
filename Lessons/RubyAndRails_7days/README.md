# Ruby and Rails 7-Day Learning Roadmap
This 7-day roadmap is designed to give you a strong foundation in Ruby and get you building web applications with Rails quickly. Each day builds on the previous one, ensuring a progressive learning experience.

## 💎 Day 1: Ruby Basics – The Language Foundation
Start by understanding the fundamentals of the Ruby programming language, which is the backbone of Rails.

- Install Ruby: Get Ruby set up on your machine.
  - macOS: Comes pre-installed, but consider using rbenv or RVM for version management.
  - Windows: Use RubyInstaller.
  - Linux: Use your distribution's package manager or rbenv/RVM.
- Basic Syntax & Data Types: Variables, strings, integers, floats, booleans.

```ruby
# Example: Variables and Basic Operations
name = "Alice"
age = 30
pi = 3.14
is_student = true

puts "Hello, #{name}!" # String interpolation
puts "Next year, you will be #{age + 1}."
```

- Control Flow: if/else, unless, case, loops (while, until, for, each).

```ruby
# Example: Control Flow
score = 85
if score >= 90
  puts "Grade A"
elsif score >= 70
  puts "Grade B"
else
  puts "Grade C"
end

5.times { |i| puts "Loop iteration #{i}" } # A common Ruby idiom
```

- Collections: Arrays and Hashes.

```ruby
# Example: Arrays and Hashes
fruits = ["apple", "banana", "cherry"]
puts fruits[0] # "apple"

person = { "name" => "Bob", "age" => 25 }
puts person["name"] # "Bob"

# Modern hash syntax (preferred)
user = { name: "Charlie", email: "charlie@example.com" }
puts user[:email] # "charlie@example.com"
```

- Methods & Blocks: Defining functions and understanding Ruby's unique concept of blocks (do...end or {}).

```ruby
# Example: Methods and Blocks
def greet(name)
  "Hello, #{name}!"
end

puts greet("David")

# Using a block
numbers = [1, 2, 3]
numbers.each do |num|
  puts "Number: #{num}"
end
```

- Hands-on: Write small Ruby scripts to practice each concept. Solve some basic coding challenges on platforms like HackerRank or LeetCode using Ruby.

## 📚 Day 2: Object-Oriented Ruby
Ruby is a pure object-oriented language. Understanding its OOP principles is key to mastering it.

- Classes & Objects: Defining classes, creating instances (objects), attributes, and instance variables.

```ruby
# Example: Class and Object
class Dog
  def initialize(name, breed) # Constructor
    @name = name # Instance variable
    @breed = breed
  end

  def bark
    puts "#{@name} says Woof!"
  end

  def info
    puts "Name: #{@name}, Breed: #{@breed}"
  end
end

my_dog = Dog.new("Buddy", "Golden Retriever")
my_dog.bark
my_dog.info
```

- Instance Methods & Class Methods: Differentiating between methods that operate on objects and methods that operate on the class itself.
- Inheritance: How classes can inherit behavior from parent classes.
- Modules & Mixins: Ruby's way of achieving multiple inheritance (through include for instance methods, extend for class methods).


```ruby
# Example: Module (Mixin)
module Greetable
  def greeting
    "Hello, I am #{self.name}!"
  end
end

class Person
  include Greetable
  attr_reader :name # Automatically creates a 'name' getter method

  def initialize(name)
    @name = name
  end
end

person = Person.new("Eve")
puts person.greeting
```

- attr_accessor, attr_reader, attr_writer: Shorthands for creating getter and setter methods.
- Hands-on: Create a small object-oriented application, like a simple "Library" system with Book and Author classes, demonstrating inheritance and modules.


## 🌐 Day 3: Introduction to Rails – Your First Web App
Time to dive into Rails, the web framework built on Ruby.

- Install Rails: gem install rails
- Generate a New Rails App: rails new my_blog --database=sqlite3 (or postgresql, mysql)
- Rails Directory Structure: Understand the purpose of app, config, db, public, bin, etc.
- MVC (Model-View-Controller) Architecture: Grasp this fundamental design pattern that Rails follows.
  - Model: Handles data logic (e.g., User, Post).
  - View: Renders the user interface (HTML, ERB templates).
  - Controller: Processes requests, interacts with models, and prepares data for views.
- Rails Server: rails s
- Hands-on:
  - Generate your first Rails app.
  - Run rails s and see the default Rails welcome page in your browser.
  - Explore the generated files and match them to the MVC concept.

## 📊 Day 4: Models & Database Interactions (Active Record)
Rails's ORM (Object-Relational Mapping) makes database interactions a breeze.

- Migrations: Creating and modifying database tables using Ruby code.
  - rails generate migration CreateUsers name:string email:string
  - rails db:migrate
- Active Record:
  - Defining Models: Models inherit from ApplicationRecord.
  - CRUD Operations: Creating, Reading, Updating, and Deleting records using Active Record methods.  

```ruby
# Example: Active Record Operations in Rails Console (rails c)
# Create a new user
User.create(name: "Frank", email: "frank@example.com")

# Read all users
all_users = User.all

# Find a user by ID
user = User.find(1)

# Find by attribute
active_users = User.where(status: "active")

# Update a user
user.update(email: "new_frank@example.com")

# Delete a user
user.destroy
```

- Associations: belongs_to, has_many, has_one, has_many_through (e.g., a User has many Posts, a Post belongs to a User).
- Rails Console: rails c – an interactive environment to test your models and database interactions.
- Hands-on:
  - Generate a User model with name and email attributes.
  - Generate a Post model with title and content.
  - Establish a User has_many Posts and Post belongs_to User association.
  - Use rails c to create users, create posts associated with users, and query them.

## 🎬 Day 5: Controllers & Views
Connect your models to the web interface.

- Controllers: Handling HTTP requests, defining actions, and interacting with models.
  - rails generate controller Posts index show new create edit update destroy
- Routing (config/routes.rb): Mapping URLs to controller actions.
  - resources :posts (for RESTful routes)  

```ruby
# Example: config/routes.rb
Rails.application.routes.draw do
  resources :posts # Generates: GET /posts, POST /posts, GET /posts/:id, etc.
  root "welcome#index" # Sets the root URL
end
```

- Views (ERB): Embedding Ruby code within HTML templates to render dynamic content.

```ruby
<h1>All Posts</h1>
<ul>
  <% @posts.each do |post| %>
    <li>
      <%= link_to post.title, post_path(post) %> by <%= post.user.name %>
    </li>
  <% end %>
</ul>
<%= link_to "New Post", new_post_path %>
```

- Form Helpers: Building forms for user input (e.g., form_with).
- RESTful Principles: Understand how Rails encourages following REST conventions for your API endpoints.
- Hands-on:
  - Generate a PostsController with index, show, new, create, edit, update, destroy actions.
  - Implement basic CRUD functionality for Posts (displaying all posts, showing a single post, creating a new post, editing, and deleting).
  - Ensure your routes are correctly defined using resources :posts.

## ✨ Day 6: Frontend Integration & Asset Pipeline
Make your application look good and handle static assets.

- Asset Pipeline: Rails's system for managing JavaScript, CSS, and images (Sprockets or Webpacker/Propshaft).
- Styling (CSS): Basic CSS integration.
- JavaScript: Adding interactivity with JavaScript.
- Partials: Reusing view components.
- Layouts: Defining common structure for your views.
- Action Text & Active Storage (Optional but Recommended):
  - Action Text: Rich text editor integration.
  - Active Storage: Handling file uploads (images, documents).
- Hands-on:
  - Add some basic CSS to style your posts list and forms.
  - Implement a simple JavaScript alert when a form is submitted (just for practice).
  - Create a partial for displaying individual post details and render it in your index and show views.
  - (Optional) If time permits, try integrating Action Text for rich content editing on your posts.  

## ⚙️ Day 7: Authentication, Deployment Concepts & Next Steps
Secure your app and understand how to bring it online.

- Authentication (Devise Gem): Implement user authentication (sign up, log in, log out). Devise is the de-facto standard.
  - gem 'devise' in your Gemfile.
  - rails generate devise:install
  - rails generate devise User
- Authorization (CanCanCan/Pundit - brief intro): Briefly understand how to control what users can do (e.g., only authors can edit their own posts).
- Deployment Concepts:
  - Heroku: A popular platform for deploying small Rails apps (easy to start).
  - DigitalOcean/Vultr: More control with IaaS (Infrastructure as a Service).
  - AWS/Google Cloud: Scalable and robust cloud providers.
  - Environment Variables: Managing sensitive information in production.
- Next Steps:
  - Testing (RSpec/Minitest)
  - APIs (building JSON APIs)
  - Background Jobs (Sidekiq)
  - Action Cable (WebSockets)
- Hands-on:
  - Integrate Devise into your application to allow users to sign up and log in.
  - Protect your post creation/editing actions so only authenticated users can access them.
  - (Optional) Read about Heroku deployment and try to deploy your app (even a very basic one).  