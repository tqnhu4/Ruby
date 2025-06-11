#!/usr/bin/env ruby
require 'json'

TASKS_FILE = 'todos.json'

# Load tasks from file
def load_tasks
  if File.exist?(TASKS_FILE)
    JSON.parse(File.read(TASKS_FILE), symbolize_names: true)
  else
    []
  end
end

# Save tasks to file
def save_tasks(tasks)
  File.write(TASKS_FILE, JSON.pretty_generate(tasks))
end

# Display tasks
def list_tasks(tasks)
  puts "\n📝 Todo List:"
  if tasks.empty?
    puts "No tasks found."
  else
    tasks.each_with_index do |task, index|
      status = task[:done] ? "✅" : "❌"
      puts "#{index + 1}. #{task[:text]} [#{status}]"
    end
  end
end

# Add a task
def add_task(tasks, text)
  tasks << { text: text, done: false }
  save_tasks(tasks)
  puts "✅ Task added: #{text}"
end

# Mark a task as done
def mark_done(tasks, index)
  if tasks[index]
    tasks[index][:done] = true
    save_tasks(tasks)
    puts "☑️ Marked as done: #{tasks[index][:text]}"
  else
    puts "⚠️ Invalid task number."
  end
end

# Delete a task
def delete_task(tasks, index)
  if tasks[index]
    deleted = tasks.delete_at(index)
    save_tasks(tasks)
    puts "🗑️ Deleted: #{deleted[:text]}"
  else
    puts "⚠️ Invalid task number."
  end
end

# CLI Menu
def main
  tasks = load_tasks

  loop do
    puts "\n--- Todo CLI ---"
    puts "1. List tasks"
    puts "2. Add task"
    puts "3. Mark task as done"
    puts "4. Delete task"
    puts "5. Exit"
    print "Choose an option: "
    choice = gets.chomp

    case choice
    when "1"
      list_tasks(tasks)
    when "2"
      print "Enter task description: "
      text = gets.chomp
      add_task(tasks, text)
    when "3"
      print "Enter task number to mark as done: "
      index = gets.chomp.to_i - 1
      mark_done(tasks, index)
    when "4"
      print "Enter task number to delete: "
      index = gets.chomp.to_i - 1
      delete_task(tasks, index)
    when "5"
      puts "👋 Goodbye!"
      break
    else
      puts "❌ Invalid option."
    end
  end
end

main
