# Write a method combine_anagrams(words) that, given an array of strings words,
# groups the input words into anagram groups. Case doesn't matter in
# classifying strings as anagrams (but case should be preserved in the output),
# and the order of the anagrams in the groups doesn't matter. The output should
# be an array of anagram groups (i.e. an array of arrays).

def combine_anagrams(words)
    # - Take each element of the array and sort its letters alphabetically,
    #   without regard to case. Save each sorted element into a new array.
    # - Save it into a new sub-array.
    # - Compare it to every other member of the character-sorted array. If it
    #   matches another, append that one to the new sub-array.
 words.each { |w| w.chars}
end

puts combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])
