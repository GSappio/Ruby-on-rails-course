class Person 
    def speak
        "Hello, people!!"
    end
    
    def my_id
        "Meu id é #{self.object_id}"
    end
end

p = Person.new
puts p.my_id

p1 = Person.new
puts p1.my_id

p2 = Person.new
puts p2.my_id