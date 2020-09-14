# 1. que diga "Bienvenido a la calculadora mas deahuevo"
# input  <=
# output <= "Bienvenido a la calculadora mas deahuevo"
puts "Bienvenido a la calculadora mas deahuevo"


# 6. repetir hasta que escriba "salir"
# input  <= codigo de los pasos 2, 3 y 4
# output <= loop until "salir"
while true


    # 2. imprimir "Ingrese la operacion"
    # input  <=
    # output <= imprimir "Ingrese la operacion"
    puts "Ingrese la operacion"


    # 3. ingrese la operacion
    # input  <= "2 + 3"
    # output <= [2.0, '+', 3.0]
    operacion = gets.chomp.strip
    break if operacion == "salir"
    matches = operacion.match(/(?<num1>\d+)\s*(?<operador>\+)\s*(?<num2>\d+)/)
    //2 + 3 * 4 + 5 / 3 - 4
    output = []
    output << matches[:num1].to_f
    output << matches[:operador]
    output << matches[:num2].to_f
    #puts output.inspect


    # 4. operar la operacion
    # input  <= [2.0, '+', 3.0]
    # output <= 5.0
    resultado = output[0] + output[2]
    #puts resultado.inspect


    # 5. imprima el resultado
    # input  <= resultado
    # output <= imprimir 5.0
    puts resultado


end
