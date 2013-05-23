class Timer
	attr_accessor :seconds

	def initialize(time=0)
		@seconds = time
	end

	def time_string
		minutes = (@seconds/60)%60
		hours = (@seconds/60)/60
		seconds = @seconds%60
		"#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
	end

	def padded(int)
		format('%02d',int)
	end

end