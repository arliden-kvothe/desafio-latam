# ejemplo de lectura de un archivo
# (este debe de existir, en otro caso envía error)
file = File.new("archivo.txt","r")
buffer = file.read
## es lo mismo que
buffer2 = open("archivo.txt", "r")


calificaciones=File.new("alumnos.csv", "r")
buffer = calificaciones.read
lines = buffer.split("\n") # existen otras expresiones similares,
                          # \t tab
                          # \s referencia a un string

#calificaciones=File.new("alumnos.csv", "r")
#lines=calificaciones.readlines

lines = IO.readlines("alumnos.csv")

#puts "#{lines}"

class Alumno
  attr_accessor :nombre, :calificaciones
  def initialize(nombre, calificaciones)
    @nombre=nombre
    @calificaciones=calificaciones
  end
end

alumnos=[] # variable que guarda los alumnos creados
lines.each do |l| # declaracion del bloque
    data = l.split(',') # la variable l contiene la 
                # cadena "Alumno1, 10, 7, 10"
    alumnos << Alumno.new(data[0], data[1..-1].map { |x| x.to_f})
    # se crea el objeto Alumno con data[0] que corresponde
    # al nombre y el resto de valores corresponden a las
    # calificaciones 
end

puts "#{alumnos.inspect}"
