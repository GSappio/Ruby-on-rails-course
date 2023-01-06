puts "\n"

x = "Gabriel"
y = 'Sappio'

puts x 
puts x.class
puts y 
puts y.class

puts ("_______________________________") 
puts "\n"

# Concatenar
a = "Curso"
b = " Rails"    

puts a + b # Aqui a permanece a e b permanece b
puts a << b # Aqui ele pega b e joga dentro de b e permanece assim.

puts ("_______________________________") 
puts "\n"

# Trocandoo as ordens teremos...

puts a << b
puts a + b 

# Na tela ficaria 'Curso Rails Rails'

puts ("_______________________________")
puts "\n"

# Desta forma ele não mantem o mesmo ID
t = "curso"
puts t.object_id
t = t + "rails"
puts t
puts t.object_id

# Desta forma ele mantem o mesmo ID
q = "curso"
puts q.object_id
q = q << "rails"
puts q
puts q.object_id 

puts ("_______________________________") 
puts "\n"
# Interpolando código Ruby com a string
q = "Anos"
b = "Gabriel Sappio #{22} #{q}"
puts b