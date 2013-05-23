def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str,count=2)
	array = []
	count.times {array << str}
	array.join(" ")
end

def start_of_word(str, idx)
	str[0,idx]
end

def first_word(str)
	str.split(" ")[0]
end

def titleize(str)
	str_arr = str.split
	little_words = ['and','over','the']
	str_arr[1,str_arr.size].map{|str| str.capitalize! unless little_words.include?(str)}
	str_arr[0].capitalize!
	str_arr.join(" ")
end