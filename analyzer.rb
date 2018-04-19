# text = ''
# line_count = 0
# File.open("text.txt").each do |line|
#   line_count += 1
#   text << line
# end
# puts "#{line_count} lines"

lines  = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join

puts "#{line_count} lines"


total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/,'').length
word_count = text.split.length
paragraph_count = text.split(/\n\n/).length
sentence_count = text.split(/\.|\?|!/).length



puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count} sentences"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} sentences per paragraph (average)"
