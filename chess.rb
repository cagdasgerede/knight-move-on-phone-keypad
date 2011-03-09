

Arr=[[4,6],[6,8],[7,9],[4,8],[3,9],[],[1,7],[2,6],[1,3],[2,4]]

def compute(v,n)
	h = 1
	queue = [ "#{v}" ]
	cur_level = [ v ]
	new_level = []
	while h <= n
		cur_level.each do |k|
			prefix = queue.shift
			Arr[ k ].each do |x|
				new_level.push x
				queue.push "#{prefix},#{x}"
			end
		end
		cur_level = new_level
		new_level = []
		h += 1
	end

	puts queue
	puts 'done'
end

compute(1, ARGV.first.to_i)
