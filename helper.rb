class Get_Api

	attr_accessor :hash_of_arrays

	def initialize
		hash_of_arrays = []
	end

	def put_api_together (new_file ,directory)

		print 'new file name:'
		name = gets.chomp
		read_files directory
		file_to_write = hash_of_arrays
		open_and_write object

	end

	def read_files(directory)

		Dir.foreach(directory) do|item|
	  	next if item == '.' or item == '..'
	  	# do work on real items
	  	pwd = directory +"/"+ item
	  	file = File.open(pwd)
	  	@hash_of_arrays << file.read
		end

	end

	def open_and_write input, new_file_name, new_file_location
		
		new_file = new_file_location + new_file_name
		File.open(new_file, 'w') do |f| 
			f.write(input) 
		end

	end
end

  # file = File.open(file_path, 'w').read.gsub(/[^a-z0-9\s]/i, '')
  # word_lengths       = file.split(" ").map {|word| word.length }

  # word_lengths_count = Hash.new(0)
  # word_lengths.each {|length| word_lengths_count[length] += 1}
  # word_lengths_count
