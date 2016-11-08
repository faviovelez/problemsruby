# Generar 20 números enteros al azar y guardarlos dentro de un arreglo, mostrar el arreglo y luego mostrar
# del arreglo exclusivamente aquellos números que sean mayor que 10
# http://ruby-doc.org/core-2.2.0/Random.html
require 'pry'
a = Array.new(20) { rand(1..25) }
puts a
b = (a.select do |x| 
	x > 10 
end)
puts b
binding.pry