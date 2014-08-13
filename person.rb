class Person
	attr_accessor :stomach, :allergies, :name

	def initialize(name, allergies)
		@name = name
		@stomach = []
		@allergies = allergies
	end

	def eat(food)
		if (food & allergies) != []
			@stomach = []
			puts "AllergyError"
		else
			@stomach = (@stomach + food).uniq
		end
		self
	end
	
end

pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

somebody = Person.new("Aaron", ["gluten"])
puts "#{somebody.name} has the following allergies #{somebody.allergies}"
puts "what's your in your stomach now? #{somebody.eat(pan_seared_scallops).stomach}"
puts "what's your in your stomach now? #{somebody.eat(water).stomach}"
puts "what's your in your stomach now? #{somebody.eat(pizza).stomach}"


