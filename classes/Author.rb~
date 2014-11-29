class Author
@@all = " "
	attr_accessor :name, :biography
		
	def initialize(name, biography)
		@name = name
		@biography = biography
		@@all += "\n" + "name: " + @name + ", biography: " + @biography
	end

	def self.inst_from_file
		name = File.open('./file/author/name').readlines
		i=0
		for i in 0..name.size-1
		name[i] = name[i].chomp    
		end
		name.delete("")

		biography = File.open('./file/author/biography').readlines
		for i in 0..biography.size-1
		biography[i] = biography[i].chomp    
		end
		biography.delete("")

		for i in 0..name.size-1
		Author.new(name[i], biography[i])
		
		end
	end

	def self.statistics
    		puts "\n" + "Authors : #{@@all}"
  	end

	def self.add_new
		name = File.open('./file/author/name', 'a')
		puts "name:\n"		
		newname = gets.chomp.to_s
		name.write("\n"+newname)

		biography = File.open('./file/author/biography', 'a')
		puts "biography:\n"		
		newbiography = gets.chomp.to_s
		biography.write("\n"+newbiography)

	
	end
end

