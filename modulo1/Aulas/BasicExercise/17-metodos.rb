class Pessoa
    def falar # Método de instância / precisa instanciar ( .new )
        "Olá, pessoal!"
    end
    
    def self.gritar(texto) # Método de classe / Não precisa instanciar
        "#{texto}!!!!!!!!!"
    end

    def self.pergunta(texto) # Método de classe / Não precisa instanciar
        "#{texto}????????"
    end
end

p1 = Pessoa.new
puts p1.falar

puts Pessoa.gritar("Eu estou gritando")
puts Pessoa.pergunta("Eu estou perguntando")