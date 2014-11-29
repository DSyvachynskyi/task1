require './classes/Book.rb'
require './classes/Order.rb'
require './classes/Reader.rb'
require './classes/Author.rb'
class Library

	def self.statistics
    		Book.statistics
		Order.statistics
		Reader.statistics
		Author.statistics
  	end
end

Book.inst_from_file
Order.inst_from_file
Reader.inst_from_file
Author.inst_from_file
loop do
puts " \n Enter your choice: \n 1 - all statistics; \n 2 - books statistics; \n 3 - orders statistics; 
 4 - readers statistics; \n 5 - authors statistics; \n 6 - popular books; 
 7 - frequent customers; \n 8 - add something to the library; \n exit - to exit the programm."
choice = gets.chomp.to_s
case choice
	when '1'
		Library.statistics
	when '2'
		Book.statistics 
	when '3' 
		Order.statistics
	when '4'
		Reader.statistics
	when '5'
		Author.statistics
	when '6'
		Order.popular_book
	when '7'
		Order.popular_reader
	when '8'
	
	loop do
	puts " 1 - add the new book;\n 2 - add the new order;\n 3 - add the new reader;\n 4 - add the new author;\n exit - to exit.\n"
	a = gets.chomp.to_s

	case a
		when '1'
			Book.add_new
		when '2'
			Order.add_new
		when '3'
			Reader.add_new
		when '4'
			Author.add_new
		when 'exit'
			break
		else	
			puts "Wrong choice \n"
	end
	end	

	when 'exit'
		break
	else
		puts "Wrong choice \n"
	end


end



