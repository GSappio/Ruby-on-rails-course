# Jeito mais curto

class Pessoa   
    attr_accessor :nome
end
 
 p1 = Pessoa.new
 p1.nome = "Gabriel"
 p1.nome = "Sappio"
 p1.nome = "Silva"
 puts p1.nome

# Jeito mais longo

class Pessoa   
    # attr_accessor :nome
    def initialize(nome = "teste")
       @nome = nome
    end
 
    def nome=(nome)
         @nome = nome
    end
 
    def nome
         @nome
    end  
 end
 
 p1 = Pessoa.new
 p1.nome = "Gabriel" # setter receber, setar
 p1.nome = "Sappio" # setter receber, setar
 p1.nome = "Silva" # setter receber, setar
 puts p1.nome #getter imprimir, pegar de volta