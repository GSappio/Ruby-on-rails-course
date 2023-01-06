class Person

    def initialize(cont = 1)
        cont.times do |i|
            puts "Inicializando... #{i}"
        end
    end

    def speak(name = "Gabriel Sappio!!")
        name
    end

    def speak1(name1 = "Sappio")
        "Gabriel #{name1}!!"
    end

    def speak2(name2 = "Gabriel")
        name2
    end

    def speak3(name3 = "Gabriel", name4 = "Sappio")
        "#{name3} #{name4}"
    end

end
puts ("_______________________________") 
puts "\n"
p = Person.new
puts ("_______________________________") 
puts "\n"
puts p.speak
puts ("_______________________________") 
puts "\n"
puts p.speak1
puts ("_______________________________") 
puts "\n"
puts p.speak2("Apagando") # se coloca aqui ele apaga o que foi passado em cima como fixo
puts ("_______________________________") 
puts "\n"
puts p.speak3("Fulano", "Qualquer") # Substitui o texto de cima
puts ("_______________________________") 
puts "\n"
p1 = Person.new(5) # Sempre que você chama o new o initialize é chamado