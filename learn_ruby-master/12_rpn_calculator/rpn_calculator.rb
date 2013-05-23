class RPNCalculator
	
	def initialize
		@stack = []
	end

	def push(str)
		@stack.push(str)
	end

	def plus
		stack_check("+")
	end

	def minus
		stack_check("-")
	end

	def divide
		stack_check("/")
	end

	def times
		stack_check("*")
	end

	def stack_check(operation)
		a = @stack.pop
		b = @stack.pop
		raise "calculator is empty" unless a || b
		case(operation)
		when "+"
			@stack.push(b+a)
		when "-"
			@stack.push(b-a)
		when "/"
			@stack.push(1.0*b/a)
		when "*"
			@stack.push(1.0*b*a)
		end
	end

	def value
		@stack.last
	end

	def tokens(str)
		tokens_result = []
		tokens_temp = str.split(" ")
		operands = ['+','-','*','/']
		tokens_temp.each {|token| 
			if operands.include?(token)
				tokens_result << token.to_sym
			else
				tokens_result << token.to_i
			end
			}
		tokens_result
	end

	def evaluate(str)
		tokens_arr = tokens(str)
		tokens_arr.each {|token|
			case token
			when :+
				plus
			when :-
				minus
			when :*
				times
			when :/
				divide
			else
				push(token)
			end
		}
		value
	end
end

calculator = RPNCalculator.new
p calculator.tokens("/")
# calculator.push(2)
#     calculator.push(3)
#     calculator.plus
#     p calculator.value