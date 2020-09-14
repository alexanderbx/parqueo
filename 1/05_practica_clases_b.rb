class Carro
    #attr_accessor es una constante para las clases por lo que he visto hasta ahora
    attr_accessor :color, :modelo, :marca
end

carro1 = Carro.new()
carro1.color = "rojo"
carro1.modelo = "automatico"
carro1.marca = "Toyota"

carro2 = Carro.new()
carro2.color = "azul"
carro2.modelo = "mecanico"
carro2.marca = "Mercedez"

puts carro2.modelo
puts carro1.color