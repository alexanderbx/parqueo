class Pantalla
    def select
        @@nombre_pantalla = rand(10)
        puts "se selecciono la pantalla #{@@nombre_pantalla}"
    end

    def self.pantalla_seleccionada
        @@nombre_pantalla
    end

    def self.seleccion
        @@seleccion ||= "seguir jugando"
    end

    def self.seleccion=(value)
        @@seleccion = value
    end

    def review
        sleep 2
        puts "se empezaron a hacer los objetivos"
    end
end

def pantalla
    Pantalla.new
end

def ingreso_de_texto
    puts "Ingrese la mision"
    gets.chomp.strip
end

def recorrer_pantalla(mision)
    puts "se inicio la pantalla"
    sleep rand(3)
    puts "se recorrio la pantalla #{Pantalla.pantalla_seleccionada} y mision #{mision}"
end

def objetivos completo = nil
    unless completo.nil?
        sleep 2
        puts "se completaron los objectivos"
        return
    end

    Pantalla.new
end

def estrella
    nil
end

def imprimir estrella
    sleep 2
    puts "se imprimio la estrella"
end

def agarrar estrella
    sleep 2
    puts "se agarro la estrella"
    Pantalla.seleccion = "salir" if Pantalla.pantalla_seleccionada == 2
end

def seleccion
    sleep 2
    puts "el jugador selecciono #{Pantalla.seleccion}"
    Pantalla.seleccion
end

def completo
    nil
end
