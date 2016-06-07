class Human
	attr_accessor :strength, :intelligence, :stealth, :health

	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
		puts "You have initailized a human!"
	end

	def attack(target)
		if target.class.ancestors.include?(Human)
			target.health -= 10
			true
		else
			false
		end
		self
	end

	def displayHealth
		puts "Your Health is #{@health}" 
		self
	end
end

# user1 = Human.new
# user2 = Human.new
# puts user1.class.ancestors
# user2.attack(user1).displayHealth