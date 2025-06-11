# ruby-tutorials
# 🐍 7-Day Ruby Learning Roadmap for Beginners

Welcome to your accelerated Ruby learning journey! This roadmap is carefully crafted to guide absolute beginners through the fundamentals of Ruby within seven days, emphasizing practical application and rapid skill acquisition.

Each day focuses on a distinct set of core Ruby concepts, complete with illustrative examples and a culminating practical project to solidify your understanding.

---

## 📅 Day 1: Ruby Basics & Setup

Today is all about getting started with Ruby, from setting up your development environment to writing your very first Ruby program and understanding its basic building blocks.

### Content:
- **Introduction to Ruby:** What is Ruby, its philosophy (developer happiness, elegance), and why it's popular (especially with Ruby on Rails).
- **Installation & Environment Setup:**
  - Detailed steps to install Ruby on Windows, macOS, or Linux (using rbenv or RVM for version management is recommended on Unix-like systems).
  - Configuring a suitable IDE (e.g., VS Code with Ruby extensions or RubyMine).
- **Your First Ruby Program:** Writing and executing a "Hello, World!" program.
- **Basic Syntax and Structure:**
  - Comments (# for single-line, =begin/=end for multi-line).
  - Basic I/O (puts, print, gets).
- **Variables and Basic Data Types:**
  - Variables: Concept, naming conventions.
  - Common data types: Integers (Integer), Floating-point numbers (Float), Strings (String), Booleans (true, false, nil).

## Example:

```ruby
# Your first Ruby program
puts "Hello, Ruby World!"

# Variable declaration and initialization
name = "Charlie"
age = 28
height = 1.80 # This is a Float
is_developer = true
nothing = nil # Represents no value or absence of an object

puts "Name: #{name}, Age: #{age}, Height: #{height}, Is Developer: #{is_developer}"
puts "Value of nothing: #{nothing.inspect}" # .inspect shows the object's internal state

# Getting input from the user
print "What's your favorite programming language? "
language = gets.chomp # gets reads input, chomp removes the newline character
puts "Ah, you like #{language}!"
```

## 📅 Day 2: Operators & Control Flow
Today, you'll delve into performing operations and controlling the execution flow of your Ruby programs using conditional statements and loops.

### Content:
- **Arithmetic Operators:** Addition, subtraction, multiplication, division, modulo, exponentiation.
- **Assignment Operators:** Simple assignment (=), compound assignments (+=, -=, etc.).
- **Comparison Operators:** Greater than, less than, equal to (==), not equal to (!=), greater than or equal to, less than or equal to.
- **Logical Operators:** && (AND), || (OR), ! (NOT).
- **Conditional Statements:**
  - if, elsif, else: Decision-making based on conditions.
  - unless: The inverse of if.
  - case: For multiple conditional branches.
- **Looping Constructs:**
  - while: Repeats a block of code while a condition is true.
  - until: Repeats a block of code until a condition is true.
  - for: Iterating over a range or collection.
  - each (on collections): Common iteration method.
  - break, next: Control loop flow.

## Example:

```ruby
# Arithmetic operators example
a = 20
b = 6
puts "Sum: #{a + b}"
puts "Difference: #{a - b}"
puts "Product: #{a * b}"
puts "Division: #{a / b.to_f}" # Ensure float division
puts "Modulo: #{a % b}"
puts "Exponentiation: #{a ** 2}"

# Conditional statements example
score = 75
if score >= 90
  puts "Excellent!"
elsif score >= 70
  puts "Good!"
elsif score >= 50
  puts "Average."
else
  puts "Needs improvement."
end

# unless example
user_logged_in = false
unless user_logged_in
  puts "Please log in to continue."
end

# case example
day_of_week = "Tuesday"
case day_of_week
when "Monday"
  puts "It's the start of the week."
when "Tuesday", "Wednesday", "Thursday"
  puts "It's a weekday."
else
  puts "It's the weekend!"
end

# Loop examples
puts "\n--- While Loop ---"
count = 0
while count < 3
  puts "Count: #{count}"
  count += 1
end

puts "\n--- For Loop ---"
for i in 0..2 # Inclusive range
  puts "Number: #{i}"
end

puts "\n--- Each Loop (common for collections) ---"
["apple", "banana", "cherry"].each do |fruit|
  puts "I love #{fruit}"
end
```
---

## 📅 Day 3: Collections (Arrays, Hashes) & Iterators
Today, you'll explore Ruby's fundamental data structures for grouping and organizing data.

### Content:
- **Arrays:** Ordered, mutable collections of elements (can hold different types).
  - Declaration, initialization, accessing elements (by index).
  - Adding (<<, push), removing (pop, shift, delete_at), and other useful methods (length, empty?, include?).
- **Hashes:** Unordered collections of key-value pairs (similar to dictionaries/maps).
  - Creating, adding, accessing, updating, and deleting entries.
  - New hash syntax (Ruby 1.9+).
- **Common Iterators:**
  - each: Iterating over collections.
  - map (or collect): Transforming elements into a new collection.
  - select (or filter): Selecting elements based on a condition.
  - find (or detect): Finding the first element that matches a condition.
### Example:

```ruby
# Array example
fruits = ["apple", "orange", "banana"]
puts "Initial array: #{fruits.inspect}"
fruits << "mango" # Add an element
puts "Array after adding: #{fruits.inspect}"
puts "Element at index 0: #{fruits[0]}"
fruits.pop # Remove last element
puts "Array after popping: #{fruits.inspect}"
puts "Array length: #{fruits.length}"
puts "Includes 'orange'? #{fruits.include?("orange")}"

# Hash example
student_grades = {
  "Alice" => 95,
  "Bob" => 88
}
# New hash syntax (preferred for symbols as keys)
student_info = {
  name: "Charlie",
  age: 16,
  class: "10A"
}
puts "\nStudent Grades Hash: #{student_grades.inspect}"
puts "Charlie's age: #{student_info[:age]}" # Accessing with symbol key

# Add a new entry
student_grades["David"] = 77
puts "Hash after adding David: #{student_grades.inspect}"

# Iterate over a hash
student_info.each do |key, value|
  puts "#{key}: #{value}"
end

# Common iterators
numbers = [1, 2, 3, 4, 5]

# map/collect
squared_numbers = numbers.map { |n| n * n }
puts "\nSquared numbers: #{squared_numbers.inspect}"

# select/filter
even_numbers = numbers.select { |n| n % 2 == 0 }
puts "Even numbers: #{even_numbers.inspect}"

# find/detect
first_odd = numbers.find { |n| n % 2 != 0 }
puts "First odd number: #{first_odd}"
```

----

## 📅 Day 4: Methods (Functions) & Blocks
Today you'll learn to modularize your code with methods and harness the power of Ruby's blocks.

### Content:
- **Methods:**
  - Defining and calling methods.
  - Parameters (positional, keyword arguments).
  - Return values (explicit return or implicit last expression).
- **Blocks:**
  - Anonymous functions passed to methods.
  - do...end vs. {...} syntax.
  - Yielding to a block (yield).
- **Procs and Lambdas:**
  - Named, reusable blocks (advanced topic, but good to know they exist).
### Example:

```ruby
# Simple method
def greet(name)
  puts "Hello, #{name}!"
end

greet("Ruby Learner")

# Method with multiple parameters and return value
def calculate_area(length, width)
  length * width # Implicit return
end

area = calculate_area(5, 7)
puts "Area of a 5x7 rectangle: #{area}"

# Method with default parameter
def say_hello(name = "Guest")
  puts "Hello, #{name}!"
end

say_hello # Uses default
say_hello("World")

# Method with block
def execute_block
  puts "Before the block"
  yield # Execute the code in the block
  puts "After the block"
end

execute_block do
  puts "This is inside the block!"
end

execute_block { puts "This is another block!" }

# Method yielding with arguments
def give_me_numbers(num1, num2)
  puts "Inside give_me_numbers method..."
  yield num1, num2 # Yields numbers to the block
  puts "Back in give_me_numbers."
end

give_me_numbers(10, 20) do |x, y|
  puts "The numbers from the method are: #{x} and #{y}"
  puts "Their sum is: #{x + y}"
end
```

----

## 📅 Day 5: Classes & Objects (OOP Basics)
Today, you'll dive into Object-Oriented Programming (OOP) in Ruby, learning how to create your own custom data types and their behaviors.

### Content:
- **Classes and Objects:**
  - Defining a class (class).
  - Creating objects (instances) from a class (.new).
- **Instance Variables (@variable):** Data specific to each object.
- **Constructor (initialize):** Method called when a new object is created.
- **Instance Methods:** Methods that operate on an object's instance variables.
- **attr_reader, attr_writer, attr_accessor:** Shorthand for creating getter and setter methods.
- **Inheritance:** Creating new classes based on existing ones.
### Example:

```ruby
# Define a class
class Dog
  # attr_accessor creates both getter and setter methods for name and breed
  attr_accessor :name, :breed
  # attr_reader creates only getter methods for age
  attr_reader :age

  # Constructor method
  def initialize(name, breed, age)
    @name = name # Instance variable
    @breed = breed
    @age = age
    puts "#{name} the #{breed} has been created!"
  end

  # Instance method
  def bark
    puts "#{@name} says Woof!"
  end

  # Setter for age (if attr_writer isn't used, custom setter can be made)
  def age=(new_age)
    if new_age >= 0
      @age = new_age
    else
      puts "Age cannot be negative!"
    end
  end
end

# Create objects (instances)
my_dog = Dog.new("Buddy", "Golden Retriever", 3)
your_dog = Dog.new("Lucy", "Labrador", 5)

# Access instance variables using getter methods
puts "#{my_dog.name} is a #{my_dog.breed} and is #{my_dog.age} years old."
puts "#{your_dog.name} is a #{your_dog.breed}."

# Call instance methods
my_dog.bark
your_dog.bark

# Using setter method
my_dog.age = 4
puts "Buddy's new age: #{my_dog.age}"

# Inheritance example
class Puppy < Dog # Puppy inherits from Dog
  def initialize(name, breed, age, cuteness_level)
    super(name, breed, age) # Call parent's initialize
    @cuteness_level = cuteness_level
  end

  def play
    puts "#{@name} is playing happily!"
  end

  def bark
    puts "#{@name} says Yap! Yap!" # Overrides parent's bark method
  end
end

my_puppy = Puppy.new("Max", "Beagle", 0, "Extreme")
my_puppy.play
my_puppy.bark # Calls Puppy's bark
```

----

## 📅 Day 6: Modules, Mixins & Standard Library
Today, you'll learn how to organize code, reuse functionality, and leverage Ruby's extensive standard library.

### Content:
- **Modules:**
  - Containers for methods and constants (cannot be instantiated).
  - Used for namespacing to avoid name collisions.
- **Mixins:**
  - Using modules to "mix in" behavior into classes (include).
  - Achieving multiple inheritance-like functionality.
- **Standard Library:**
  - Introduction to common built-in modules/classes.
  - Examples: Math, Time, Date, File, JSON.
### Example:

```ruby
# Module for mathematical operations
module MathHelper
  PI = 3.1415926535

  def self.circle_area(radius) # Module method (called directly on module)
    PI * radius**2
  end

  def square_area(side) # Instance method (for mixin)
    side * side
  end
end

puts "Area of circle with radius 5: #{MathHelper.circle_area(5)}"
puts "Value of PI: #{MathHelper::PI}" # Accessing a constant

# Class using a Mixin
class GeometryCalculator
  include MathHelper # Mix in the MathHelper module

  def calculate_shape_areas(radius, side)
    puts "Circle area: #{MathHelper.circle_area(radius)}" # Can still call module methods
    puts "Square area: #{square_area(side)}" # Calling mixin instance method
  end
end

calc = GeometryCalculator.new
calc.calculate_shape_areas(3, 4)

# Standard Library Example: Time
puts "\n--- Time & Date Examples ---"
current_time = Time.now
puts "Current time: #{current_time}"
puts "Year: #{current_time.year}"
puts "Month: #{current_time.month}"
puts "Day of week: #{current_time.strftime("%A")}" # Formatted day name

# Standard Library Example: File I/O
puts "\n--- File I/O Example ---"
file_name = "sample.txt"
# Writing to a file
File.open(file_name, "w") do |file|
  file.puts "Hello from Ruby!"
  file.puts "This is a new line."
end
puts "Content written to #{file_name}."

# Reading from a file
if File.exist?(file_name)
  puts "Reading content from #{file_name}:"
  File.foreach(file_name) do |line|
    puts line
  end
else
  puts "#{file_name} does not exist."
end

# Clean up (optional)
# File.delete(file_name)
# puts "#{file_name} deleted."
```

---

## 📅 Day 7: Practical Project: Simple Command-Line Task Manager
Today is about consolidating your knowledge by building a small, practical Ruby application.

### Content:
- **Building a Simple Command-Line Task Manager:**
  - **Features:** Add new tasks, list existing tasks, mark tasks as complete, delete tasks.
  - **Concepts applied:**
    - Classes and Objects (for Task).
    - Arrays (to store tasks).
    - Methods (for add_task, list_tasks, mark_complete, delete_task).
    - User input (gets.chomp).
    - Conditional statements (if/elsif/else, case).
    - Loops (while).
### Example Project:

```ruby
# task_manager.rb

# Represents a single task
class Task
  attr_reader :id, :description
  attr_accessor :completed

  @@next_id = 1 # Class variable to generate unique IDs

  def initialize(description)
    @id = @@next_id
    @@next_id += 1
    @description = description
    @completed = false
  end

  def to_s
    status = @completed ? "[X]" : "[ ]"
    "#{status} ID: #{@id} - #{@description}"
  end
end

# Manages a collection of tasks
class TaskManager
  def initialize
    @tasks = []
  end

  def add_task(description)
    task = Task.new(description)
    @tasks << task
    puts "Task '#{description}' added with ID #{task.id}."
  end

  def list_tasks
    if @tasks.empty?
      puts "No tasks yet. Add some!"
    else
      puts "\n--- Your Tasks ---"
      @tasks.each do |task|
        puts task
      end
      puts "------------------"
    end
  end

  def mark_task_complete(id)
    task = find_task_by_id(id)
    if task
      task.completed = true
      puts "Task ID #{id} marked as complete."
    else
      puts "Task with ID #{id} not found."
    end
  end

  def delete_task(id)
    initial_count = @tasks.length
    @tasks.delete_if { |task| task.id == id }
    if @tasks.length < initial_count
      puts "Task with ID #{id} deleted."
    else
      puts "Task with ID #{id} not found."
    end
  end

  private

  def find_task_by_id(id)
    @tasks.find { |task| task.id == id }
  end
end

# --- Main Application Logic ---
manager = TaskManager.new
reader = gets

puts "--- Simple Ruby Task Manager CLI ---"

loop do
  puts "\nOptions:"
  puts "1. Add Task"
  puts "2. List Tasks"
  puts "3. Mark Task Complete"
  puts "4. Delete Task"
  puts "5. Exit"
  print "Choose an option: "

  choice = reader.gets.chomp

  case choice
  when "1"
    print "Enter task description: "
    description = reader.gets.chomp
    if description.empty?
      puts "Task description cannot be empty."
    else
      manager.add_task(description)
    end
  when "2"
    manager.list_tasks
  when "3"
    print "Enter ID of task to mark complete: "
    id = reader.gets.chomp.to_i
    manager.mark_task_complete(id)
  when "4"
    print "Enter ID of task to delete: "
    id = reader.gets.chomp.to_i
    manager.delete_task(id)
  when "5"
    puts "Exiting Task Manager. Goodbye!"
    break
  else
    puts "Invalid option. Please try again."
  end
end
```

## 💡 Tips for Quick Learning and Immediate Application:
- **Hands-on Practice is Crucial!** The best way to learn Ruby is by writing code. Implement every example, and then try to modify it or create your own variations.
- **Embrace the "Ruby Way":** Ruby often provides elegant, concise ways to solve problems. Don't force it to behave like other languages you might know.
- **Use irb (Interactive Ruby):** irb is your best friend for quick testing of Ruby code snippets and exploring how things work. Just type irb in your terminal.
- **Explore RubyGems:** Ruby has a vast ecosystem of libraries called "gems." While not in this 7-day plan, know that they exist and extend Ruby's capabilities greatly.
- **Official Documentation & Community:** Ruby's official documentation is excellent. Also, engage with the Ruby community (online forums, Stack Overflow) for support.