class C
end

class B < C
end

class A < B
end

a = A.new
b = B.new

b.respond_to?('class')
#a.superclass == b.class
A.superclass == B

a.class.ancestors.include?(C)
