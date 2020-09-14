puts "bienvenido, por favor ingresa tu nombre"
nombre = gets.chomp.capitalize
p "tu nombre es: " + nombre + " ahora dime cual es tu comida favorita, pizza o hamburguesa"
comida = gets.chomp

if comida == "pizza" || comida == "hamburguesa"
    puts "excelente " + nombre + " tu comida favorita es: " + comida
else comida == ""
    puts "no me quisiste decir tu comida favorita :("
    return
end