def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(array)
	array.inject(0){|result,element| result += element}
end

def multiply(*array)
	array.inject(:*)
end

def power(b,e)
	b**e
end

def factorial(n)
	result = 1
	1.upto(n) {|i| result *= i}
	result
end