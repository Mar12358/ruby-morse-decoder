def decode_char(char)
  morse_dictionary = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M',
    '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }
  morse_dictionary[char]
end

def decode_word(word)
  chars = word.split
  output_word = ''
  chars.each do |c|
    output_word += decode_char(c)
  end
  "#{output_word} "
end

def decode(sentence)
  words = sentence.split('   ')
  output_sentence = ''
  words.each do |word|
    output_sentence += decode_word(word)
  end
  output_sentence.chomp(' ')
end

puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
