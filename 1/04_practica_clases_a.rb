valores = {carro: 2000, moto: 5000, casa: 10000, bici: 150000, deportivo: 12500, tele: 9501, uni: 2500 }
p valores
p "solo apareceran valores por arriba de 9,500"
valores.delete_if do |articulo, precio|
    precio < 9500
end
p valores
puts ""