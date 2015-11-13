begin
  puts "iniciando ejecucion"
  raise ArgumentError, "forzando lanzamiento de excepcion"
  puts "continuo con la ejecucion"
rescue SyntaxError => e
  puts "Se ha generado un error: #{e}"
  raise "entra al bloque ensure?"
rescue StandardError => e
  puts "me ejecuto?"
rescue ArgumentError => e
  puts "no me ejecuto"
rescue Exception => e
  puts "excepcion no esperada"
ensure
  puts "finalizando prueba"
end