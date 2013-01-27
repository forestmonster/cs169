# Write a method combine_anagrams(words) that, given an array of strings words,
# groups the input words into anagram groups. Case doesn't matter in
# classifying strings as anagrams (but case should be preserved in the output),
# and the order of the anagrams in the groups doesn't matter. The output should
# be an array of anagram groups (i.e. an array of arrays).

def combine_anagrams(words)
    # - Take each element of the array and sort its letters alphabetically,
    #   without regard to case.
    # - Save each sorted element into a new sub-array.
    # - Iterate through the new array, comparing each element to each other
    #   element. If they match, save them into a new array together. Push any
    #   later matches onto the end of that array.
    # - Compare it to every other member of the character-sorted array. If it
    #   matches another, append that one to the new sub-array.
    # - For each one, compare it to the next element in the arry. If it doesn't
    #   match, go on to the next one. If it does match, 
  array = []
  words.each do |w|
    array << w.chars.sort.join
    puts array.inspect
    #w.chars.sort { |a, b| a.casecmp(b) } .join
  end

  array_container = []
  array.each do |a|
    a.pop.inspect
  end
end

puts combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']).inspect
