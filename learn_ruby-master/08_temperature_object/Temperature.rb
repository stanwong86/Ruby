class Temperature
	def initialize(options = {})
		@f = options[:f]
		@c = options[:c]
	end

	def in_fahrenheit
		@f or (9.0/5.0*@c + 32)
	end

	def in_celsius
		@c or (5.0/9.0*(@f - 32))
	end

	def self.from_celsius(temp)
		Temperature.new(:c => temp)
	end

	def self.from_fahrenheit(temp)
		Temperature.new({:f => temp})
	end

	def self.ftoc

	end

	def self.ctof
	end
end

class Celsius < Temperature
	def initialize(temp)
		super({c: temp})
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@f = temp
	end
end

 #Celsius.new(50).in_celsius