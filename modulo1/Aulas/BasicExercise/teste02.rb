# UNLESS oposto de IF, começa com a parte negativa primeiro
# puts 'Digite um numero:'
# x = gets.chomp.to_i

# unless x >= 2
#     puts 'x é menor que 2'
# else 
#     puts 'x é maior que 2'
# end

# IF
# puts 'Digite um numero:'
# x = gets.chomp.to_i

# if x > 2
#     puts x.to_s + ' é maior que 2'
# end

# CASE
# print 'Digite uma idade: '
# idade = gets.chomp.to_i

# case idade
# when 0..2
#     puts "Bebê"
# when 3..12
#     puts "Criança"
# when 13..18
#     puts "Adolescente"
# else 
#     puts "Adulto"
# end

# ESTRUTURA CONDICIONAL TERNÁRIA

print '"M" para masculino e "F" para feminino. Digite: '
sexo = gets.chomp

if sexo == 'M'
    puts 'Masculino'
else  
    puts 'Feminino'
end #--> Igual aos outros

# puts (sexo == "M" ? 'Masculino' : 'Feminino') --> Igual aos outros
# sexo == "M" ? (puts 'Masculino') : (puts 'Feminino') --> Igual aos outros