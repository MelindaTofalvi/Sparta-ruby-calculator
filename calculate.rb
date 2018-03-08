class Calculate
	attr_accessor :calc_choice, :nums, :operator, :sum

	def initialize
	end

	def do_calculation
		@@nums.map! {|i| Integer(i)}
	
		if @@operator == "1"
			sum = @@nums.inject(0){|sum,x| sum + x }
			puts sum
		elsif @@operator == "2"
			sum = @@nums.inject(:*)
			puts sum
		elsif @@operator == "3"
			sum = @@nums.inject(:/)
			puts sum
		elsif @@operator == "4"
			sum = @@nums.reduce 0 {|total, n| @@nums[0] - total - n}
			puts sum
		elsif @@operator == "5"
			sum = @@nums.inject(:**)
			puts sum
		else 
			@@nums.each{|i| 
			puts "The subtraction of #{i} is #{Math.sqrt(i)}." }
		end		
	end

	def ask_for_operator
		if calc_choice == "B"
			puts "Please type the number of the operation you would like to use: 1-Addition, 2-Multiplication, 3-Division, 4-Subtraction"
			operator = gets.chomp
			@@operator = operator
		
		else
			puts "Please type the number of the operation you would like to use: 1-Addition, 2-Multiplication, 3-Division, 4-Subtraction, 5-Power, 6-Square root"
			operator = gets.chomp
			@@operator = operator
			
		end
		do_calculation
	end

	def ask_for_numbers
		puts "Please give me the numbers that you want to operate on. Please separate them by space."
		gets_num = gets.chomp
		@@nums = gets_num.split(/ /)
		ask_for_operator
	end

	def which_calculator
		puts "Which caclulator would you like to use? (B)asic or (A)dvance?"
		@@calc_choice = gets.chomp
		ask_for_numbers
	end
end