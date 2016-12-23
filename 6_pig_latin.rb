# Script: Single word converter to Pig Latin

# GET a word from user input
# IF the word starts with a vowel, add "way" to the end
# ELSE replace the word with its pig latin equivalent
#   GET all of the consonants before the first vowel in the word
#   SET the consonants at the end of the word and add "ay"
# ENDIF
# RETURN the pig-latin word

def pig_latin_translator
  puts "Escribe algo: "
  pig_latin = gets.chomp
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  if vowels.include?(pig_latin[0])
    pig_latin + 'way'
  elsif consonants.include?(pig_latin[0]) &&  consonants.include?(pig_latin[1]) && consonants.include?(pig_latin[2])
    pig_latin[3..-1] + pig_latin[0..2] + 'ay'
  elsif consonants.include?(pig_latin[0]) && consonants.include?(pig_latin[1])
    pig_latin[2..-1] + pig_latin[0..1] + 'ay'
  elsif consonants.include?(pig_latin[0])
    pig_latin[1..-1] + pig_latin[0] + 'ay'
  else
    pig_latin
  end
end

p pig_latin_translator

def pig_latin_translator_2
  puts "Escribe la frase a traducir: "
  pig_latin = gets.chomp
  frase = pig_latin.split

  alpha = ('a'..'z').to_a
  vowels = %w(a e i o u)
  consonants = alpha - vowels
  
  frase.map do |words|

  if vowels.include?(words[0])
    words + 'way'
  elsif consonants.include?(words[0]) &&  consonants.include?(words[1]) && consonants.include?(words[2])
    words[3..-1] + words[0..2] + 'ay'
  elsif consonants.include?(words[0]) && consonants.include?(words[1])
    words[2..-1] + words[0..1] + 'ay'
  elsif consonants.include?(words[0])
    words[1..-1] + words[0] + 'ay'
  else
    words
  end
 end
end


p pig_latin_translator_2