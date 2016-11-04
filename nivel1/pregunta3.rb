a = [1, 2, 3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

=begin
Iterando los arreglos anteriores crear un único arreglo final con: [1, :azul, Tacos, 2, :rojo, Quesadillas, 3,:amarillo, “Hamburguesas]
:amarillo, “Hamburguesas]
=end

n = 0

(3.times do 
	puts "#{a[n]} #{b[n]} #{c[n]}"
	n += 1
end).to_a
