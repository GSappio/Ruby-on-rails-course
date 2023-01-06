puts "digite seu nome: "
nome = gets.chomp
puts "O seu nome é: " + nome

puts "-------------------"

puts nome.inspect

puts "-------------------"

puts "Digite seu salario:"
salario = gets.chomp.to_f

puts 'Seu salario atualizado é: ' + (salario * 1.10).to_s