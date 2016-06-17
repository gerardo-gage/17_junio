#Nested arrays
def row0-7
  row = ["Torre", "Caballo", "Alfil", "Reina", "Rey", "Alfil", "Caballo", "Torre"]
end

def row1-6
  row = Array.new(8)
  row.each{|pieza| pieza = "Peon"}
  row 
end

def row2_5
  row = Array.new(8){"      "}
end

def ajedrez
  ajedrez = []
  color = ["-B" "-W"]
  ajedrez[0] = row0-7.each{|pieza| pieza + color[0]}
  ajedrez[7] = row0-7.each{|pieza| pieza + color[1]}
  ajedrez[1] = row1-6.each{|pieza| pieza + color[0]}
  ajedrez[6] = row1-6.each{|pieza| pieza + color[1]}
  for i in 1..5
    ajedrez[i] = row2_5
  end
  ajedrez
end

table = Array.new(6){Array.new(5)}
table[0] = ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"]
table[1] = ["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]]
table[2] = ["Fernanda Gonzalez", 12 "Femenino", "Tercero", [6, 9, 8, 6, 8]]
table[3] = ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]]
table[4] = ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]]
table[5] = ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]]

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6
