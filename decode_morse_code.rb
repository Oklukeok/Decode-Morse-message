LETTERS = {
  A: '.-',
  B: '-...',
  C: '-.-.',
  D: '-..',
  E: '.',
  F: '..-.',
  G: '--.',
  H: '....',
  I: '..',
  J: '.---',
  K: '-.-',
  L: '.-..',
  M: '--',
  N: '-.',
  O: '---',
  P: '.--.',
  Q: '--.-',
  R: '.-.',
  S: '...',
  T: '-',
  U: '..-',
  V: '...-',
  W: '.--',
  X: '-..-',
  Y: '-.--',
  Z: '--..'
}.freeze

def decode_char(ltr)
  letter = ''
  LETTERS.each do |key, value|
    letter += key.to_s if ltr == value
  end
  letter
end

def decode_word(word)
  decoded_word = ''
  new_word = word.split

  new_word.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end

def decode_phrase(phrase)
  new_phrase = ''
  word = phrase.split('   ')
  word.each do |w|
    new_phrase += "#{decode_word(w)} "
  end
  new_phrase
end

letter = decode_char('-.--')
puts letter
word = decode_word('-- -.--') # Should return MY
puts "word: #{word}"
phrase = decode_phrase('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts phrase
