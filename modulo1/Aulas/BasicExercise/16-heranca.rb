class Pessoa
    attr_accessor :nome, :email
end

class PessoaFisica < Pessoa
    attr_accessor :cpf

    def falar(texto)
        texto
    end
end

class PessoaJuridica < Pessoa
    attr_accessor :cnpj

    def pagar_fornecedor
        puts "Pagando fornecedor..."
    end
end

puts ("_______________________________") 
puts "\n"

# setter
p1 = Pessoa.new
p1.nome = "Gabriel"
p1.email = "gabriel@gabriel.com"

# getter
puts p1.nome
puts p1.email

puts ("_______________________________") 
puts "\n"

p2 = PessoaFisica.new
# setter
p2.nome = "Joao"
p2.email = "joao@joao.com"
p2.cpf = "1212121212"

## getter
puts p2.nome
puts p2.email
puts p2.cpf

puts p2.falar("Hello!!")

puts ("_______________________________") 
puts "\n"

p2 = PessoaJuridica.new
# setter
p2.nome = "Videos de TI"
p2.email = "VTI@vti.com"
p2.cnpj = "4324342434"

## getter
puts p2.nome
puts p2.email
puts p2.cnpj

puts p2.pagar_fornecedor