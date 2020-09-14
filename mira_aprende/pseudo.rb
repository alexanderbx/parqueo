puts "Bienvenido a la calculadora mas deahuevo"

while true

    puts "Ingrese la operacion"

    operacion = gets.chomp.strip
    break if operacion  == 'salir'

    data = operacion.scan(/[0-9]+|[+\-\*\/]/)
    num1 = data[0].to_f
    operador = data[1]
    num2 = data[2].to_f
    resultado = case operador
    when '+' then num1 + num2
    when '-' then num1 - num2
    when '*' then num1 * num2
    when '/' then num1 / num2
    end

    puts resultado

end