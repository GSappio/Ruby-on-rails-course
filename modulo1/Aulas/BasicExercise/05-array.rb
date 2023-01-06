# #EX-01
# s = "Gabriel"
# puts s[0]

# #EX-02
# v = [1, 3, 5, 6, 7, 9] # Pode ser [] ou Array.new

# v.each do |element|
#     puts element
# end

# #EX-03
# v1 = Array.new # Pode ser [] ou Array.new
# v1.push(4)
# v1.push("Gabriel")
# v1.push("Sappio")
# v1.push("Silva")

# puts v1[1..3]

arrays = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

arrays.each do |externo|
    externo.each do |interno|
        puts interno
    end
end



# v1.each do |itens|
#     puts itens
# end