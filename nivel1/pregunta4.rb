require 'pry'

=begin
Utilizando como base este arreglo: [1, :azul, Tacos, 2, :rojo, Quesadillas, 3,:amarillo, “Hamburguesas] 
crear un arreglo nuevo remplazando todos los
números y símbolos por string
=end

final = [1, :azul, "Tacos", 2, :rojo, "Quesadillas", 3, :amarillo, "Hamburguesas"]

new_arr = []

=begin
# Convirtiendo solo los símbolos y números a string
for n in 0..final.length do
	if (final[n]).class == Symbol || (final[n]).class == Fixnum
		new_arr.push((final[n]).to_s)
	else 
		new_arr.push(final[n])
	end
end
=end

# convirtiendo todos los elementos, mismo resultado
for n in 0..final.length do
		new_arr.push((final[n]).to_s)
end

binding.pry