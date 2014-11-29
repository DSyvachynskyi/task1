class Book
@@all = " "

	attr_accessor :title, :author
		
	def initialize(title, author)
		@title = title
		@author = author
		@@all += "\n" + "title: " + @title + ", author: " + @author
	
	end
	
	def self.inst_from_file
		title = File.open('./file/book/title').readlines
		i=0
		for i in 0..title.size-1
		title[i] = title[i].chomp 
		end
		title.delete("")

		author = File.open('./file/book/author').readlines
		for i in 0..author.size-1
		author[i] = author[i].chomp    
		end
		author.delete("")

		for i in 0..title.size-1
		Book.new(title[i], author[i])
		
		end
	end

	def self.statistics
    		puts "\n" + "Books : #{@@all}" 
  	end

	def self.add_new
		title = File.open('./file/book/title', 'a')
		puts "title:\n"		
		newtitle = gets.chomp.to_s
		title.write("\n"+newtitle)

		author = File.open('./file/book/author', 'a')
		puts "author:\n"		
		newauthor = gets.chomp.to_s
		author.write("\n"+newauthor)
	end
end

