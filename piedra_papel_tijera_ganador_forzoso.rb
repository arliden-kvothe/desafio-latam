piedra=0
papel =1
tijera=2 

valor=-1

random=Random.new
empate=true

while empate 
  eleccion=gets.chomp # "tijera"
  
  cpu = random.rand(3) # 0,1,2
  
  if eleccion == "piedra"
    valor = piedra
  elsif eleccion == "papel"
    valor=papel
  else
    valor=tijera
  end

  # tijera a papel , papel a piedra, piedra a tijera

  if valor == cpu
    puts "A ocurrido un empate, juega de nuevo"
  elsif (valor == piedra && cpu == papel) || (valor == tijera && cpu == piedra) || (valor == papel && cpu == tijera)
    puts "perdiste!"
    empate=false
  else 
    puts "ganaste!"
    empate=false
  end
end


