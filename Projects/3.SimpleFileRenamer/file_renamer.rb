#!/usr/bin/env ruby

# Simple File Renamer
# Renames files in a given directory with a specified base name and index

puts "📁 Welcome to the Simple File Renamer"

print "Enter the path to the directory: "
dir_path = gets.chomp

unless Dir.exist?(dir_path)
  puts "❌ Directory not found. Exiting."
  exit
end

print "Enter the base name for files (e.g., 'image'): "
base_name = gets.chomp

print "Enter the file extension (e.g., 'jpg', 'txt'): "
extension = gets.chomp.downcase

files = Dir.entries(dir_path).select { |f| File.file?(File.join(dir_path, f)) && File.extname(f).downcase == ".#{extension}" }

if files.empty?
  puts "⚠️ No .#{extension} files found in the directory."
  exit
end

puts "🔁 Renaming #{files.size} files..."

files.each_with_index do |file, index|
  old_path = File.join(dir_path, file)
  new_name = "#{base_name}_#{index + 1}.#{extension}"
  new_path = File.join(dir_path, new_name)
  File.rename(old_path, new_path)
  puts "Renamed: #{file} -> #{new_name}"
end

puts "✅ Renaming complete!"
