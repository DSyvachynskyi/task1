class Reader
@@all = " "
	attr_accessor :name, :email, :city, :street, :house
		
	def initialize(name, email, city, street, house)
		@name = name
		@email = email
		@city = city
		@street = street
		@house = house
		@@all += "\n" + "name: " + @name + ", email: " + @email + ", city: " + @city + ", street: " + @street + ", house: " + @house
	end
	def self.inst_from_file
		email = File.open('./file/reader/email').readlines
		i=0
		for i in 0..email.size-1
		email[i] = email[i].chomp    
		end
		email.delete("")

		name = File.open('./file/reader/name').readlines
		for i in 0..name.size-1
		name[i] = name[i].chomp    
		end
		name.delete("")
		
		city = File.open('./file/reader/city').readlines
		for i in 0..city.size-1
		city[i] = city[i].chomp    
		end
		city.delete("")

		street = File.open('./file/reader/street').readlines
		for i in 0..street.size-1
		street[i] = street[i].chomp    
		end
		street.delete("")

		house = File.open('./file/reader/house').readlines
		for i in 0..house.size-1
		house[i] = house[i].chomp    
		end
		house.delete("")
		
		for i in 0..name.size-1
		Reader.new(name[i], email[i], city[i], street[i], house[i])
		
		end
	end
	def self.statistics
    		puts "\n" + "Readers : #{@@all}"
  	end
	def self.add_new
		name = File.open('./file/reader/name', 'a')
		puts "name:\n"		
		newname = gets.chomp.to_s
		name.write("\n"+newname)

		email = File.open('./file/reader/email', 'a')
		puts "email:\n"		
		newemail = gets.chomp.to_s
		email.write("\n"+newemail)

		city = File.open('./file/reader/city', 'a')
		puts "city:\n"		
		newcity = gets.chomp.to_s
		city.write("\n"+newcity)
		
		street = File.open('./file/reader/street', 'a')
		puts "street:\n"		
		newstreet = gets.chomp.to_s
		street.write("\n"+newstreet)

		house = File.open('./file/reader/house', 'a')
		puts "house:\n"		
		newhouse = gets.chomp.to_s
		house.write("\n"+newhouse)
	end
end

