# Generar 10 números enteros al azar y guardarlos dentro de un arreglo, luego calcular el promedio
require 'pry'
a = Array.new(10) { rand(1..25) }

sum = 0
b = (a.inject(0) do |sum, x| 
	sum += x 	
end)
b /= (a.length).to_f
puts b

binding.pry