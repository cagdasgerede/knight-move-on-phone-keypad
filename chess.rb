

Move_map=[[4,6],[6,8],[7,9],[4,8],[0,3,9],[],[0,1,7],[2,6],[1,3],[2,4]]

def compute(v,n)
	h = 1
	prefix_queue = [ "#{v}" ]
	cur_level = [ v ]
	new_level = []
	while h <= n
		cur_level.each do |k|
			prefix = prefix_queue.shift
			Move_map[ k ].each do |x|
				new_level.push x
				prefix_queue.push "#{prefix},#{x}"
			end
		end
		cur_level = new_level
		new_level = []
		h += 1
	end

	puts prefix_queue
	puts 'done'
end

compute( ARGV[0].to_i, ARGV[1].to_i)
