lista = [
    1,
    2,
    3
]

informacion = [["123@gmail.com","Ciudad de Guatemala","casa"], 
               ["abc@hotmail.com","Ciudad de Medellin","apartamento"]]

contactos = {"Casandra" => {}, "Ramiro" => {}}
favoritos = {nombre => {}}

contactos["Casandra"][:correo] = informacion[0][0]
contactos["Casandra"][:ciudad] = informacion[0][1]
contactos["Casandra"][:tipo_de_vivienda] = informacion[0][2]
p contactos

favoritos[nombre]["favorito_1"] = lista[0]
favoritos[nombre]["favorito_2"] = lista[1]
favoritos[nombre]["favorito_3"] = lista[2]
puts "A la compu no le gusta tu ultimo ingreso en lista de favoritos, esta será tu nueva lista de favoritos"
p favoritos