$letters = {
  A:'.-', 
  B:'-...', 
  C:'-.-.', 
  D:'-..', 
  E:'.', 
  F:'..-.', 
  G:'--.', 
  H:'....', 
  I:'..', 
  J:'.---', 
  K:'-.-',	
  L:'.-..', 
  M:'--',	
  N:'-.',	
  O:'---',	
  P:'.--.',	
  Q:'--.-',	
  R:'.-.',
  S:'...',	
  T:'-',	
  U:'..-',	
  V:'...-',	
  W:'.--',	
  X:'-..-',
  Y:'-.--',	
  Z:'--..' 
}

def decode_char(ltr)
  letter = ''
  $letters.each do |key, value|
    if ltr == value
      letter += "#{key}"
    end
  end
  return letter
end

def decode_word(word)
  decodedWord = ""
  newWord = word.split

  newWord.each do |char|
    decodedWord += decode_char(char)
  end
  return decodedWord
end

def decode_phrase(phrase)
  newPhrase = ""
  word = phrase.split('   ')
  word.each do |w|
    newPhrase += decode_word(w) + ' '
  end
  return newPhrase
end

letter = decode_char("-.--")
puts letter
word = decode_word("-- -.--") # Should return MY 
puts "word: #{word}"
phrase = decode_phrase('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts phrase