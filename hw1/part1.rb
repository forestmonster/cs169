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
    array = str.downcase.gsub(/[^\w\s]/, '').split
    count = Hash.new(0)
    array.each { |x| count[x] += 1 }
    count
end
