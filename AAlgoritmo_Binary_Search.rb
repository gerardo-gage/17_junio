#Algoritmo Binary Search 

num_random = rand(1..100)
mayor = /(El numero es )(mayor a)(\d)(\d)(?\d)/
menor = /(El numero es )(menor a )(\d)/
igual = /(El numero es )(\d)/

puts "Tengo un número entre 1 y 100, Cuál crees que sea (#{num_random})"
puts "Para que sea más rápido, puede preguntarme si es mayor
      o menor a otro número"
guess = STDIN.gets.chomp

r = false
while r == false
  case 
  when guess.match(mayor) != nil 
    puts (guess.match(mayor)[3].to_i < num_random)? "Si" : "No :("
    guess = STDIN.gets.chomp
  when guess.match(menor) != nil
    puts (guess.match(menor)[3].to_i > num_random)? "Si" : "No :("
    guess = STDIN.gets.chomp
  when guess.match(igual) != nil
    if guess.match(igual)[2].to_i == num_random
      puts "Adivinaste!!"
      r = true
    else 
      puts "NO :("
      guess = guess = STDIN.gets.chomp
    end
  else
    puts "Recuerda que sólo puedes decir si es mayor o menor a un cierto número
    o si es algún número!"
    guess = guess = STDIN.gets.chomp
  end
end


