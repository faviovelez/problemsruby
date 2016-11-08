# Se tiene un arreglo de alumnos, cada alumno es un hash
# alumnos = [{name:"Juan Cristobal", edad:17}, {name: "Belen", edad:21}]
# Calcular la edad promedio del curso
# Encontrar al alumno más joven del curso"
require 'pry'
alumnos = [{name:"Juan Cristobal", edad:17}, {name: "Belen", edad:21}, {name: "Juan Pedro", edad:22}, {name: "Ignacio", edad:25}, {name: "Carla", edad:18}]

older = alumnos.first[:edad]
number_index = 0
answer = ""
avg = 0

def greatest?(a, b)
	a > b ? true : false
end

# Solución para el mayor de la clase
(alumnos.length).times do |n|
	if greatest?(alumnos[n][:edad], older)
		older = alumnos[n][:edad]
		number_index = n
	end
end
answer = "El mayor es #{alumnos[number_index][:name]} y tiene #{alumnos[number_index][:edad]} años"

# Solución para el promedio
(alumnos.length).times do |n|
	avg += alumnos[n][:edad]
end
avg /= (alumnos.length)

binding.pry
