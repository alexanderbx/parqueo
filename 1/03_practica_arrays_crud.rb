puts "ahora creemos una lista"
lista = []
puts "ingresa 4 cosas que te gusten"
lista << gets.chomp
lista << gets.chomp
lista << gets.chomp
lista.push gets.chomp
puts "adivina adivinador, te acuerda que colocaste en la posicion tres de tu lista?"
puts ""
respuesta = gets.chomp
    (0..2).each do 
    break if respuesta == lista[2]
    puts "repite de nuevo"
    respuesta = gets.chomp
    end
lista.pop
numeros = [1,2,3,4,5,6,7,8,9,10]
numeros.each { |conteo| puts conteo }
