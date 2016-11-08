require 'pry'
a = [1, 2, 3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

=begin
Iterando los arreglos anteriores crear un único arreglo final con: [1, :azul, Tacos, 2, :rojo, Quesadillas, 3,:amarillo, “Hamburguesas]
=end

final = []

3.times do |n|
	final.push(a[n]) 
	final.push(b[n]) 
	final.push(c[n]) 
end
binding.pry