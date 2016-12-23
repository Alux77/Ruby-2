
def swap_words(array)
  new_array = []
    array.each do |words|
    new_array << words.gsub(/[(aeiou)(0123456789)(AEIOU)]/, '*')
  end
  puts new_array
  puts array
end

p swap_words(["578 gatitos muy bonitooooooooooos"]) 

def swap_words_2(array)
  new_array = []
    array.each do |words|
    new_array << words.gsub!(/[(aeiou)(0123456789)(AEIOU)]/, '*')
  end
  puts new_array
  puts array
end
 
p swap_words_2(["578 gatitos muy bonitooooooooooos"]) 


