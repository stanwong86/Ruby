class Array

	def initialize(array=[])
		@array = array
		#puts @array
	end

	def sum
		@array.inject(0) {|result,element| result + element}
	end	
end