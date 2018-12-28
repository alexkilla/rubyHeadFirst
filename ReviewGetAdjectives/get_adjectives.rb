# review_file = File.open(Dir.pwd + '/ReviewGetAdjectives/reviews.txt')
# puts review_file.class
#
# lines = review_file.readlines
# puts "Line 4: #{lines[3]}"
# puts "Line 1: #{lines[0]}"
#
# review_file.close

lines = []
File.open(Dir.pwd + '/ReviewGetAdjectives/reviews.txt') do |review_file|
  lines = review_file.readlines
end

relevant_lines = lines.find_all { |line| line.include?('Truncated') }

reviews = relevant_lines.reject { |line| line.include?('--') }

puts reviews

def find_adjetives(string)
  words = string.split(' ')
  index = words.find_index('is')
  words[index + 1] unless index.nil?
end

# adjetives = []
# reviews.each { |review| adjetives << find_adjetives(review) }

adjetives = reviews.map do |review|
  adjetive = find_adjetives(review)
  "#{adjetive.capitalize}"
end

puts "The Critics agree Truncated is:"
puts adjetives
