# Em um hash você determina qual é a "chave" para acessar o valor.
#       EXEMPLO DE CHAVE E VALOR
#  15    "rails"     1997      32
# "x"    "curso"     "ano"    idade"
 
h = {"x" => "Gabriel", "y" => "Sappio"}
h1 = {"z" => h}

puts h["x"]
puts h1["z"]