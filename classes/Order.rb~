class Order
@@all = " "
@@allbooks = []
@@allreaders = []
	attr_accessor :book, :reader, :date
		
	def initialize(book, reader, date)
		@book = book
		@reader = reader
		@date = date
		@@all += "\n" + "book: " + @book + ", reader: " + @reader + ", date: " + @date
		@@allbooks << @book
		@@allreaders << @reader
	end
	def self.inst_from_file
		book = File.open('./file/order/book').readlines
		i=0
		for i in 0..book.size-1
		book[i] = book[i].chomp    
		end
		book.delete("")

		date = File.open('./file/order/date').readlines
		for i in 0..date.size-1
		date[i] = date[i].chomp    
		end
		date.delete("")

		reader = File.open('./file/order/reader').readlines
		for i in 0..reader.size-1
		reader[i] = reader[i].chomp    
		end
		reader.delete("")

		for i in 0..book.size-1
		Order.new(book[i], reader[i], date[i])
		
		end
	end
	def self.statistics
    		puts "\n" + "Orders : #{@@all}"
  	end
	
	def self.popular_book
		a = @@allbooks.group_by{|e| e}
		a = a.to_a
		
		for i in 0..a.size-1
   		a[i].delete_at(0)
		end
		
		a = a.map(&:flatten)
j=0		
loop do
		j+=1
			if a[1].size > a[0].size
			tmp = a[0]
			a[0] = a[1]
			a[1] = tmp
			end
		if a[2].size > a[1].size
			tmp = a[1]
			a[1] = a[2]
			a[2] = tmp
			end
		if a[3].size > a[2].size
			tmp = a[2]
			a[2] = a[3]
			a[3] = tmp
			end
		break if j==a.size	
	end

		puts "Popular books are:\n #1 #{a[0][0]}, ordered #{a[0].size} times; \n #2 #{a[1][0]}, ordered #{a[1].size} times;
 #3 #{a[2][0]}, ordered #{a[2].size} times."
	end

	def self.popular_reader
		 a = @@allreaders.group_by{|e| e}
		a = a.to_a
		
		for i in 0..a.size-1
   		a[i].delete_at(0)
		end
		
		a = a.map(&:flatten)
j=0		
loop do
		j+=1
			if a[1].size > a[0].size
			tmp = a[0]
			a[0] = a[1]
			a[1] = tmp
			end
		if a[2].size > a[1].size
			tmp = a[1]
			a[1] = a[2]
			a[2] = tmp
			end
		if a[3].size > a[2].size
			tmp = a[2]
			a[2] = a[3]
			a[3] = tmp
			end
		break if j==a.size	
	end

		puts "Frequent customers:\n #1 #{a[0][0]}, has taken #{a[0].size} books; \n #2 #{a[1][0]}, has taken #{a[1].size} books; \n #3 #{a[2][0]}, has taken #{a[2].size} books."
	end
	def self.add_new
		book = File.open('./file/order/book', 'a')
		puts "book:\n"		
		newbook = gets.chomp.to_s
		book.write("\n"+newbook)

		reader = File.open('./file/order/reader', 'a')
		puts "reader:\n"		
		newreader = gets.chomp.to_s
		reader.write("\n"+newreader)

		date = File.open('./file/order/date', 'a')
		puts "date:\n"		
		newdate = gets.chomp.to_s
		date.write("\n"+newdate)
	end
end

