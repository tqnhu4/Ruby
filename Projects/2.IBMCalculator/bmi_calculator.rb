def calculate_bmi(weight, height)
    (weight / (height ** 2)).round(2)
end

def bmi_category(bmi)
    case bmi
    when 0..18.4
        "Underweight"
    when 18.5..24.9
        "Normal weight"
    when 25..29.9
        "Overweight"
    else
        "Obesity"
    end
end

puts "🧮 Welcome to the BMI Calculator!"

print "Enter your weight in kilograms (kg): "
weight = gets.chomp.to_f

print "Enter your height in meters (m): "
height = gets.chomp.to_f

if weight <= 0 || height <= 0
    puts "❌ Invalid input. Weight and height must be positive numbers."
    exit
end

bmi = calculate_bmi(weight, height)
category = bmi_category(bmi)

puts "\nYour BMI is: #{bmi}"
puts "Category: #{category}"
  