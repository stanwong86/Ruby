class Friend
	def greeting(who = nil)
		return "Hello!" unless who
		"Hello, #{who}!"
	end
end