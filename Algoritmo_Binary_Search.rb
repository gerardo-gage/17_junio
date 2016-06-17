#Algoritmo Binary Search 

num_random = rand(1..100)
mayor = /(El numero es )(mayor a )(\d)/
menor = /(El numero es )(menor a )(\d)/
igual = /(El numero es )(\d)/

puts "Tengo un número entre 1 y 100, Cuál crees que sea (#{num_random})"
puts "Para que sea más rápido, puede preguntarme si es mayor
      o menor a otro número"
guess = STDIN.gets.chomp

r = false
while r == false
  case guess 
  when mayor
    puts (guess.match(mayor)[3].to_i < num_random)? "Si" : "No :("
  when menor
    puts (guess.match(menor)[3].to_i > num_random)? "Si" : "No :("
  when igual
    if guess.match(mayor)[2].to_i == num_random
      puts "Adivinaste!!"
      r = true
    else 
      puts "NO :("
    end
  else
    puts "Recuerda que sólo puedes decir si es mayor o menor a un cierto número
          o si es algún número!"
  end
end

