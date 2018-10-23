# Ejercicio 4: Constructor con argumentos.
# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:


class Dog

    def initialize(prop)

        @prop = prop

    end

def ladrar

    _propiedades = @prop

    puts "#{_propiedades[:nombre]}" + " está ladrando"

end

end



propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'} 


pet = Dog.new(propiedades)

pet.ladrar