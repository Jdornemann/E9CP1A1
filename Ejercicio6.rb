# Ejercicio 6: Objetos y archivos.
# Se tiene un archivo llamado catalogo.txt que contiene los nombres de los productos que ofrece una tienda junto con los precios de las tallas L, M, S y XS.

# Se pide:
# Optimizar el código implementando el operador splat al momento de instanciar los productos
# Generar un método que permita calcular el promedio de precio por producto.

class Product
    def initialize(name, large, medium, small, xsmall)
      @name = name
      @large = large
      @medium = medium
      @small = small
      @xsmall = xsmall
    end

    def calAVG
        puts  "Promedio para producto: " + @name + ":" +((@large.to_f + @medium.to_f +  @small.to_f + @xsmall.to_f) / 4).to_s
    end

  end
        products_list = []
        data = []
        File.open('catalogo.txt', 'r') { |file| data = file.readlines}
        data.each do |prod|
            ls = prod.split(', ')

            # products_list << Product.new(*ls)

            products = Product.new(*ls)

           puts  products.calAVG
        end

   

