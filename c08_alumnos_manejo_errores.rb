class Alumno
  attr_accessor :nombre, :calificaciones
  def initialize(nombre, calificaciones)
    @nombre=nombre
    @calificaciones=calificaciones
  end

  def Alumno.leer_alumnos(filename)
    begin
      lines = IO.readlines(filename, "r")
    rescue Exception => e
      puts "El archivo no ha podido ser abierto debido a #{e}"
      return nil
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
    #puts "#{alumnos.inspect}"
    alumnos
  end 

  def Alumno.escribe_alumno(filename, alumno)
    begin
      file = File.new(filename, "a+")
      linea=alumno.map # convierte el alumno en cadena
                    # separada por comas
      file.write(linea+ "\n") #escribe la linea anterior al
                      #al archivo 
    rescue Exception => e
      puts "El archivo no ha podido ser abierto debido a #{e}"
    ensure
      puts "tratando de cerrar el flujo de informacion"
      file.close unless file.nil?
    end
  end


  def map
    [self.nombre, self.calificaciones].join(", ")
  end
end

alumno=Alumno.new("Mario", [7.2,3.3,9])
Alumno.escribe_alumno("alumnos.csv", alumno)

#alumnos=Alumno.leer_alumnos("sin_permisos.csv")

#puts "alumnos = #{alumnos}"

#alumnos=Alumno.leer_alumnos("alumnos.csv")

#puts "alumnos = #{alumnos}"




