# Ejercicio 7: Objetos y archivos.
# Utilizando el mismo archivo del ejercicio anterior:

# La tienda desea generar un nuevo catálogo que no incluya el último precio 
# correspondiente a cada producto debido a que ya no comercializa productos de talla XS.

# Se pide generar un método que reciba como argumento los datos del archivo catalogo.txt 
#y luego imprima el nuevo catálogo solicitado en un archivo llamado nuevo_catalogo.txt

class Product
  def initialize(archivo)
    @archivo = archivo
  end

  def new_catalog
      @archivo.pop

     return @archivo 
  end

end

  data = []
  ls = []
  new_prices = []
  File.open('catalogo.txt', 'r') { |file| data = file.readfile.map(&:chomp)
  file = File.open('nuevo_catalogo.txt','w')
  data.each do |prod|
    ls = prod.split(', ')
      # products_list << Product.new(*ls)
      products = Product.new(ls)
 
    #   new_prices = products.new_catalog
      file.print  products.new_catalog
  end



  file.close



