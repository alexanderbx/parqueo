# Mario64

require './mario_detalles.rb'

while true
    pantalla.select
    mision = ingreso_de_texto
    recorrer_pantalla(mision)
    objetivos.review
    objetivos(completo)
    imprimir estrella
    agarrar estrella
    break if seleccion == 'salir'
end