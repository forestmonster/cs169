def palindrome?(str)
    forward = str.downcase.gsub(/[\W\s]/, '')
    reverse = str.reverse.downcase.gsub(/[\W\s]/, '')
    if forward == reverse
        result = true
    else
        result = false
    end
    result
end

def count_words(str)
  # YOUR CODE HERE
end


#the code below this line will test your functions.  You should remove everything below this line prior to submitting your file

if palindrome?("Do good? I? No. Evil anon I deliver. I maim nine more hero-men in Saginaw, sanitary sword a-tuck, Carol, I. Lo! Rack, cut a drowsy rat in Aswan. I gas nine more hero-men in Miami. Reviled, I (Nona) live on. I do, O God.")
    puts "The wacky one IS a palindrome"
else
    puts "The wacky one is NOT a palindrome"
end


test_str = "there goes the neighborhood"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "Madam, I'm Adam"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end

test_str = "Dennis, Nell, Edna, Leon, Nedra, Anita, Rolf, Nora, Alice, Carol, Leo, Jane, Reed, Dena, Dale, Basil, Rae, Penny, Lana, Dave, Denny, Lena, Ida, Bernadette, Ben, Ray, Lila, Nina, Jo, Ira, Mara, Sara, Mario, Jan, Ina, Lily, Arne, Bette, Dan, Reba, Diane, Lynn, Ed, Eva, Dana, Lynne, Pearl, Isabel, Ada, Ned, Dee, Rena, Joel, Lora, Cecil, Aaron, Flora, Tina, Arden, Noel, and Ellen sinned."

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"

word_count = count_words test_str
puts word_count
