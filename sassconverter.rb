require 'sass'

puts "Enter sass file location"
pathname = gets.chomp


Dir.glob("#{pathname}/*.scss") do |scss_file|
css = Sass::Engine.for_file(scss_file, {}).render
File.open("#{scss_file[0..-6]}.css", "wb") {|f| f.write(css) }
puts "Bravo, #{scss_file[0..-6]} was generated for you"
end

puts "\nThanks for using the script.\nCheck your scss folder for output and Hit enter to exit"
gets