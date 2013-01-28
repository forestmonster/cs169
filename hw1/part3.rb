# Write a method combine_anagrams(words) that, given an array of strings words,
# groups the input words into anagram groups. Case doesn't matter in
# classifying strings as anagrams (but case should be preserved in the output),
# and the order of the anagrams in the groups doesn't matter. The output should
# be an array of anagram groups (i.e. an array of arrays).

# You're given a flat array of words.
# Start with an empty hash.
# For each word in the array of words, sort it by character (case-
# insensitively) into an enumerable, then join it back into a single
# word.
# Search for the lowercase word in your hash. Is it already there?
# If it isn't, initialize a new array, using the sorted letters
# as a key, to point to the new array as a value. Otherwise continue.
# Whether it is or isn't, assign the original word to the value arr.
# Use the length of "arr" as a key, to point to the original word.
# Then reset arr to empty.

def combine_anagrams(words)
  hash = {}
  words.each do |str|
     sorted = str.chars.sort { |a, b| a.casecmp(b) } .join
     down = sorted.downcase
     if (hash[down]== nil)
       hash[down] = Array.new
     end
     arr = hash[down]
     arr[arr.length] = str
     hash[down] = arr
#     puts "[sorted] is \"" + sorted + ",\" and hash[sorted] is " + hash[sorted].inspect
     arr = nil
  end
  hash.values
end

#puts combine_anagrams(['cars', 'SArc', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream', 'hello', 'HeLLo']).inspect
