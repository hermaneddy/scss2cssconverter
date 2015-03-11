require 'sass'

puts "Enter sass file location"
pathname = gets.chomp

if !Dir.glob("#{pathname}/*.scss").empty? 

Dir.glob("#{pathname}/*.scss") do |scss_file|
puts "OK I found this file #{scss_file}"	
css = Sass::Engine.for_file(scss_file, {}).render
File.open("#{scss_file[0..-6]}.css", "wb") {|f| f.write(css) }
puts "Bravo, #{scss_file[0..-6]} was generated for you"

end

else 

	puts "I cannot find any scss files! \n Run the script again and write a valid pathname \n which contains at least one .scss file"

end	

puts "\nThanks for using the script."
gets