def	reverser
	result = yield
	result = result.split(" ").map{|word| word.reverse!}
	result.join(" ")
end

def adder(num=1)
	yield + num
end

def repeater(num=1)
	num.times{yield}
end