def measure(n=1)
	total = 0
	n.times{
		start_time = Time.now
		yield
		total += (Time.now - start_time)
	}
	total/n
end