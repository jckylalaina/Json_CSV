require 'bundler'
Bundler.require
require_relative '../../app'

puts "Que-veut tu faire"
puts "1-/save as json"
puts "2-/save as drive"
puts "3-/save as csv"
a = gets.chomp.to_i

if a == 1
	save_as_json(get)
elsif a == 2
	save_as_json(get)
	save_as_drive
elsif a == 3
	save_as_csv(get)
end	
			
			
