class Dictionary
	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def add(entry)
		if entry.is_a?(Hash)
			@entries[entry.keys[0]] = entry.values[0]
		elsif entry.is_a?(String)
			@entries[entry] = nil
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(str)
		keywords.each {|key| return true if key == str}
		false
	end

	def find(str)
		search_results = {}
		keywords.each {|key| search_results[key] = @entries[key] if key.index(/#{str}/)}
		search_results
	end

	def printable
		str = ""
		str_arr = []
		keywords.each {|key|
			str_arr << "[#{key}] \"#{@entries[key]}\""
		}
		str << str_arr.join("\n")
	end
end