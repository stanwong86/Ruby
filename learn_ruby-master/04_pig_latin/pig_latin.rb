def translate(str)
	words = str.split(" ")
	words_final = []
	words.each {|word|
		if word[0].index(/[aeiou]/)
			new_word = word + "ay"
		else
			cons_idx = word.index(/[aeiou]/)
			cons_idx +=1 if word[cons_idx-1..cons_idx] == "qu"
			cons = word[0,cons_idx]
			new_word = word[cons_idx..-1] << cons << "ay"
		end
		words_final << new_word
	}
	words_final.join(" ")
end

p translate("quiet")