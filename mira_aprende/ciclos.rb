letras = ['a', 'b', 'c', 'd']
while letras.count > 0
  puts "Que posicion desea eliminar?"
  puts "la letra es #{letras.delete_at gets.chomp.to_i}"
  break
  puts "esto nunca se va a imprimir ni a putas"
end
puts "termine!"

# => la letra es d
# => termine!
