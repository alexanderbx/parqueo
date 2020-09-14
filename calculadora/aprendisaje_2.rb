
puts "Bienvenido a otra calculadora para seguir probando esta cosa de ruby"
print "ingrese numero >> "
num = gets.chomp.to_f

# while op == 'salir'
while true
    puts "ingrese operador"
    op = gets.chomp.strip
    break if op == 'salir'
    op = op.to_sym


    puts "ingrese numero"
    num2 = gets.chomp.strip
    break if num2 == 'salir'
    num2 = num2.to_f

    num = case op
        when :+ then num + num2
        when :- then num - num2
        when :* then num * num2
        when :/ then num / num2
        when :% then num % num2
        else nil
    end
    puts num
end

