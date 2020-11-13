# ok, let's make some arrays with hashes that have different values, like main dish, side dish, and price.

# needs to have main, side, and price.


# # # dishes = [
# # #   {main: "Hot Dog", side: "Chips", price: "idk"}
# # #   {main: "Hamburger", side: "Fries", price: "idk"}
# # #   {main: "Pizza", side: "Carrots and Celery", price: "idk"}
# # #   {main: "PB & J", side: "Chips", price: "idk"}
# # #   {main: "Hot Dog", side: "Chips", price: "idk"}
# # # ]

# now, after creating this, I realized that it won't match the purpose I need it for. I need the user
  # to be able to seperately chooose a main dish and a side dish. Main dish and prices go together,
  # and the side dishes and their own prices go together. But Main dishes and side dishes need not to be paired together.
# so, let's make another array with hashes. But this time we'll do main: and prices:, and side: and prices:

# require_relative 'lunch_lady.rb'

def display_main
  puts "
            Main Dishes
  -choose your main dish, or enter 'restart' at ANYTIME to clear your order and start again-
  "
  @main_dishes.each_with_index do |item, index|
    puts "#{index + 1}) #{item[:food]} - $#{item[:price]}"
  end
  puts ""
  #make it so they can choose
  choice = gets.strip
  if choice.to_i == 1
    puts ""
    puts @main_dishes[choice.to_i - 1][:food]
    @total << @main_dishes[choice.to_i - 1][:price]
    @foods << @main_dishes[choice.to_i - 1][:food]
    display_side
  elsif choice.to_i == 2
    puts ""
    puts @main_dishes[choice.to_i - 1][:food]
    @total << @main_dishes[choice.to_i - 1][:price]
    @foods << @main_dishes[choice.to_i - 1][:food]
    display_side
  elsif choice.to_i == 3
    puts ""
    puts @main_dishes[choice.to_i - 1][:food]
    @total << @main_dishes[choice.to_i - 1][:price]
    @foods << @main_dishes[choice.to_i - 1][:food]
    display_side
  elsif choice.downcase == "restart"
     @total == @totalcopy
     @foods == @foodscopy
     puts "
     I've cleared your order, what would you like instead?
     "
     display_main
  else
    puts ""
    puts "Invalid input, try again."
    display_main
  end
end

def display_side
  puts "
            Side Dishes
       -choose your first side-
  "
  @side_dishes.each_with_index do |item, index|
    puts "#{index + 1}) #{item[:food]} - $#{item[:price]}"
  end
  puts ""
  #make it so they can choose
  choice = gets.strip
  if choice.to_i == 1
    puts ""
    puts @side_dishes[choice.to_i - 1][:food]
    @total << @side_dishes[choice.to_i - 1][:price]
    @foods << @side_dishes[choice.to_i - 1][:food]
    second_side
  elsif choice.to_i == 2
    puts ""
    puts @side_dishes[choice.to_i - 1][:food]
    @total << @side_dishes[choice.to_i - 1][:price]
    @foods << @side_dishes[choice.to_i - 1][:food]
    second_side
  elsif choice.to_i == 3
    puts ""
    puts @side_dishes[choice.to_i - 1][:food]
    @total << @side_dishes[choice.to_i - 1][:price]
    @foods << @side_dishes[choice.to_i - 1][:food]
    second_side
  elsif choice.downcase == "restart"
    @total == @totalcopy
    @foods == @foodscopy
    puts "
    I've cleared your order. What would you like instead?
    "
    display_main
  else
    puts ""
    puts "Invalid input, please try again"
    display_side
  end
end


def second_side
  puts "
          -now choose your second dish-
  "
  @side_dishes.each_with_index do |item, index|
    puts "#{index + 1}) #{item[:food]} - $#{item[:price]}"
  end
  puts ""
  #make it so they can choose
  choice = gets.strip
  if choice.to_i == 1
    puts ""
    puts @side_dishes[choice.to_i - 1][:food]
    @total << @side_dishes[choice.to_i - 1][:price]
    @foods << @side_dishes[choice.to_i - 1][:food]
    puts "
    Perfect! Now let's total it up.
    "
    puts "" 
  puts "    Okay, your total will be... $#{@total[0] + @total[1] + @total[2]} for #{@foods[0]}, #{@foods[1]}, and #{@foods[2]}"
  puts ""
  elsif choice.to_i == 2
    puts ""
    puts @side_dishes[choice.to_i - 1][:food]
    @total << @side_dishes[choice.to_i - 1][:price]
    @foods << @side_dishes[choice.to_i - 1][:food]
    puts "
    Perfect! Now let's total it up.
    "
    puts "" 
  puts "    Okay, your total will be... $#{@total[0] + @total[1] + @total[2]} for #{@foods[0]}, #{@foods[1]}, and #{@foods[2]}"
  puts ""
  elsif choice.to_i == 3
    puts ""
    puts @side_dishes[choice.to_i - 1][:food]
    @total << @side_dishes[choice.to_i - 1][:price]
    @foods << @side_dishes[choice.to_i - 1][:food]
    puts "
    Perfect! Now let's total it up.
    "
    puts "" 
  puts "    Okay, your total will be... $#{@total[0] + @total[1] + @total[2]} for #{@foods[0]}, #{@foods[1]}, and #{@foods[2]}"
  puts ""
  elsif choice.downcase == "restart"
    @total == @totalcopy
    @foods == @foodscopy
    puts "
    I've cleared your order. What would you like instead?
    "
    display_main
else
    puts ""
    puts "
    Invalid input, please try again
    "
    second_side
  end
  # puts "
  # Okay, your total will be.
  # " 
  # puts "        Your total is $#{@total[0] + @total[1] + @total[2]} for #{@foods[0]}, #{@foods[1]}, and #{@foods[2]}"
  # puts ""
end

# I need to make an array to push the puts @...._dishes pieces into while adding the second value.
# if I push my first choice into an array that will wait for a second input and then I add those together will it work? Let's try.

@main_dishes = [
  {food: "Hamburger", price: 4},
  {food: "Hot Dog", price: 3},
  {food: "Pizza", price: 2}
]

@side_dishes = [
  {food: "Chips", price: 1},
  {food: "Carrots & Celery", price: 2},
  {food: "Apple Slices", price: 2}
]

@total = []
@foods = []

@foodscopy = @foods.clone
@total = @total.clone

# def choice_main
#   choice = gets.strip
#   if choice == 1
#     @main_dishes[0] do |item|
#       puts "#{item}"
#     end
#   end
# end
# main = Lunch.new(main_dishes)

# main.food[].price[]
 display_main
#  display_side

# to clear choices and start
# on each method do an 
  # elsif choice.upcase == reset
  #   @total == @totalcopy
  #   @foods == @foodscopy
  #   display_main
  # else ...