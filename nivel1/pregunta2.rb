a = [1, 2, 3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

=begin
iterar para que aparezca lo siguiente:
	1 :amarillo Tacos
	2 :rojo Quesadillas
	3 :azul Hamburguesas
=end

n = 0
m = -1
3.times do 
	puts "#{a[n]} :#{b[m]} #{c[n]}"
	n += 1
	m -= 1
end