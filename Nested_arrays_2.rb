#Nested_arrays_2

#Gato
def gato
  ret = Array.new(3){Array.new(3){""}}
  g = ["X", "O"]
  cont = 4
  ret.each do |y|
    y.each do |x| 
      
      if cont != 0 
        x << g[rand(0..1)]
      else
        g.delete(ret[0][0])
        x << g[0]
      end

      cont -=1 if x == ret[0][0]
    end
  end
  ret
end

p gato
p gato

#En cada una de las pruebas se tienen tableros diferentes
#donde en cada tablero uno de los símbolos tiene 4 apariciones
#y el otro tiene 5

#Tabla a hash
array = []
table = []
table[0] = ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"]
table[1] = ["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]]
table[2] = ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]]
table[3] = ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]]
table[4] = ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]]
table[5] = ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]

for i in 1..5
  h_arr = []
  for j in 0..4
    h_arr << [table[0][j], table[i][j]]
  end
  array << Hash[h_arr]
end

array