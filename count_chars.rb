def count_characters(words, chars)
  sorted_words = words.map {|word| word.chars.sort}
  sorted_chars = chars.chars.sort
  sum = 0
  sorted_words.each do |word|
      i=0
      j=0
      while i < word.length && j < sorted_chars.length do
          if word[i] == sorted_chars[j]
              i += 1
              j += 1
          else 
              j += 1
          end
      end
      if i == word.length
          sum += word.length
      end
  end
  sum
end