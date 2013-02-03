class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval "your code here, use %Q for multiline strings"
  end
end

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
