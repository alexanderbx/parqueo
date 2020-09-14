class Persona
    attr_accessor:nombre
    attr_accessor:cosas

    def initialize nombre, cosas = []
        self.nombre = nombre
        self.cosas = cosas
    end
end

class Carro
    attr_accessor:llave
    attr_accessor:esta_encendido
    attr_accessor:conductor
    attr_accessor:pasajero

    def initialize llave, esta_encendido = false
        if llave.nil?
            raise "La llave no puede ser nula"
        end
        self.llave = llave
        self.esta_encendido = esta_encendido
    end

    def subir persona, es_conductor = false
        if es_conductor
            self.conductor = persona
        else
            self.pasajero = persona
        end
        puts "#{persona.nombre} se subio al carro"
    end

    def validar llave
        if llave != self.llave
            raise "no es la llave del carro"
        end
    end

    def encender llave
        self.validar llave
        self.esta_encendido = true
        puts "se encendio el carro"
    end

    def manejar ubicacion
        puts "se manejo hasta #{ubicacion.direccion}"
    end

    def parquear estacionamiento
        if !estacionamiento.disponible
            raise "no diponible"
        end
        puts "se parqueo en el estacionamiento numero #{estacionamiento.numero_assignado}"
    end

    def apagar llave
        self.validar llave
        self.esta_encendido = false
        puts "el carro esta apagado"
    end

    def bajar persona
        if self.conductor == persona
            self.conductor = nil
        elsif self.pasajero == persona
            self.pasajero = nil
        end
        puts "la persona #{persona.nombre} bajo del carro"
    end
end

class Estacionamiento
    attr_accessor :disponible
    attr_accessor :numero_assignado

    def initialize numero, disponible = true
        self.disponible = disponible
        self.numero_assignado = numero
    end
end

class Supermercado
    attr_accessor:direccion
    attr_accessor:estacionamientos
    attr_accessor:consumidores

    def initialize direccion, estacionamientos = [], consumidores = []
        self.direccion = direccion
        self.estacionamientos = estacionamientos
        self.consumidores = consumidores
    end

    def entrar persona
        self.consumidores << persona
        puts "#{persona.nombre} entro al supermercado"
    end
end

def ir_supermercado 
    lista = []
    while true
        puts "ingrese producto"
        producto = gets.chomp.strip
        lista << producto
        break if producto == 'termine'
    end

    supermercado = Supermercado.new "1ave 2-3 zona 4", [
        A.new(1,true),
        A.new(2, false)
        A.new(3),
        Estacionamiento.new(3, true),
        Estacionamiento.new(4)
    ]

    persona = Persona.new "Cristian", [
        'licencia',
        'tarjetas',
        'identificacion',
        'ficha'
    ]
    persona.cosas << lista

    llave = 12345

    carro = Carro.new llave, false
    carro.subir persona, true
    carro.encender llave
    carro.manejar supermercado
    carro.parquear supermercado.estacionamientos[2]
    carro.apagar llave
    carro.bajar persona
    
    supermercado.entrar persona

end

ir_supermercado