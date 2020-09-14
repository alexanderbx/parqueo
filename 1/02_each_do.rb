puts nombre + " ahora adivina un numero entre el 0 al 5, solo tienes tres oportunidades"
suerte = gets.chomp.to_i
(0..2).each do
    break if suerte == 4
        puts "lo siento, numero equivocado"
        suerte = gets.chomp.to_i
end