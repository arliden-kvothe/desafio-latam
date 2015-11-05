
def jugar(piedra, papel, tijera, valor, empate)
  random=Random.new
  while empate
    eleccion=gets.chomp # "tijera"
    
    cpu = random.rand(3) # 0,1,2
    
    valor=asignarValor(eleccion, piedra, papel, tijera)

    # tijera a papel , papel a piedra, piedra a tijera
    empate=quienGana?(valor, cpu, piedra, papel, tijera)
  end
end

def quienGana?(valor, cpu, piedra, papel, tijera)
  if valor == cpu
      puts "A ocurrido un empate, juega de nuevo"
      empate=true
    elsif (valor == piedra && cpu == papel) || (valor == tijera && cpu == piedra) || (valor == papel && cpu == tijera)
      puts "perdiste!"
      empate=false
    else 
      puts "ganaste!"
      empate=false
  end
  return empate
end

def asignarValor(eleccion, piedra, papel, tijera)
  if eleccion == "piedra"
    piedra
  elsif eleccion == "papel"
    papel
  else
    tijera
  end
end

piedra=0
papel =1
tijera=2 
valor=-1
empate=true

jugar(piedra, papel, tijera, valor, empate)

