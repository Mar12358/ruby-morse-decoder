def decode_word(word)
  output_word = ''
  word.each_char do |c|
    output_word += decode_char(c)
  end
  "#{output_word} "
end

def decode(sentence)
  output_sentence = ''
  sentence.each do |word|
    output_sentence += decode_word(word)
  end
  output_sentence.chomp(' ')
end
