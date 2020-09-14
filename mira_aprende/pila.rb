parqueo = ['verde', 'rojo', 'azul']

# parqueo              calle
# +-----+           # +-----+
# |  0  |  <- verde # |  0  |
# +-----+           # +-----+
# |  1  |  <- rojo  # |  1  |
# +-----+           # +-----+
# |  2  |  <- azul  # |  2  |
# +     +           # +     +

def sacar_carro parqueo, color
  calle = []
  cliente = nil
  carro = parqueo.pop
  while !carro.nil? do
    calle << carro
    puts "se saco el carro color #{carro}"
    gets.chomp

    if carro == color
      puts "se encontro el carro!"
      gets.chomp

      cliente = calle.pop
      puts "se le entrego el carro color #{carro} al cliente"
      gets.chomp
      break
    end

    carro = parqueo.pop
  end

  puts ""
  puts "carros en el parqueo: #{parqueo}"
  puts ""
  puts "carros en la calle: #{calle}"
  puts ""
  gets.chomp

  if cliente.nil?
    puts "No se encontro el carro #{color}!"
    gets.chomp
  end

  carro = calle.pop
  while !carro.nil?
    parqueo << carro
    puts "se estaciono el carro color #{carro}"
    gets.chomp
    carro = calle.pop
  end
end

while true
  puts "carros en el parqueo: #{parqueo.join ', '}"
  puts ""
  puts "Ingrese el color del carro a sacar del parqueo"
  color = gets.chomp.strip.downcase
  sacar_carro parqueo, color
  puts ""
end
