# 📝 Ruby Todo CLI App

A simple command-line Todo List application written in Ruby.  
Easily add, list, complete, and delete your daily tasks directly from the terminal.

---

## 🚀 Features

- ✅ Add new tasks
- 📋 List all tasks with completion status
- ☑️ Mark tasks as done
- 🗑️ Delete tasks
- 💾 Tasks are saved in a local JSON file (`todos.json`)

---

## 📦 Requirements

- Ruby 2.5 or later
- No external gems needed (uses built-in `json` library)

---

## 📥 Installation

## Make the script executable:
chmod +x todo.rb

## ▶️ Usage = Run

./todo.rb

Or using Ruby directly:
ruby todo.rb

## 🧪 CLI Options
--- Todo CLI ---
1. List tasks
2. Add task
3. Mark task as done
4. Delete task
5. Exit

## 💾 Example Session

--- Todo CLI ---
1. List tasks
2. Add task
3. Mark task as done
4. Delete task
5. Exit
Choose an option: 2
Enter task description: Walk the dog
✅ Task added: Walk the dog

Choose an option: 1
📝 Todo List:
1. Walk the dog [❌]

Choose an option: 3
Enter task number to mark as done: 1
☑️ Marked as done: Walk the dog

Choose an option: 4
Enter task number to delete: 1
🗑️ Deleted: Walk the dog

Choose an option: 5
👋 Goodbye!

## 📂 File Structure
```text
ruby-todo-cli/
├── todo.rb        # Main CLI application
├── todos.json     # Auto-created file to store tasks
└── README.md
```

