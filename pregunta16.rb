# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# 1. Obtener el plato mas caro
# 2. Obtener el plato mas barato
# 3. Sacar el promedio del valor de los platos
# 4. Crear un arreglo con solo los nombres de los platos
# 5. Crear un arreglo con solo los valores de los platos
# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
# 7. Dar descuento del 20% para los platos que tengan un nombre de mas 1 una palabra.

require 'pry'
menu = { "Ramen" => 3, "Dal Makhan" => 4, "Coffee" => 2, "Spaghetti" => 4, "Lime soup" => 3, "Strawberry cheesecake" => 5, "Lemonade" => 1 }	
ordered_menu = []


def greatest?(a, b)
	a > b ? true : false
end

# Respuesta 1
menu.each do |key, value|
	ordered_menu << [key, value]
end

value = ordered_menu[0][1]
index = 0

(ordered_menu.length).times do |n|
	if greatest?(ordered_menu[n][1], value)
		value = ordered_menu[n][1]
		index = n
	end
end
expensive = "El plato más caro del menú es #{ordered_menu[index][0]} y cuesta #{ordered_menu[index][1]} pesos"

# Respuesta 2
(ordered_menu.length).times do |n|
	unless greatest?(ordered_menu[n][1], value)
		value = ordered_menu[n][1]
		index = n
	end
end
cheapest = "El plato más barato del menú es #{ordered_menu[index][0]} y cuesta #{ordered_menu[index][1]} pesos"

# Respuesta pregunta 3
prices_avg = ((menu.map do |key, value|
	value
end).inject(0){|sum, x| sum += x }) / (menu.length).to_f

# Respuesta 4
plates_menu = (menu.map do |key, value|
	key
end)

# Respuesta 5
prices_menu = (menu.map do |key, value|
	value
end)

# Respuesta 6 (ERROR)
menu_con_iva = (menu.each do |key, value|
	value *= 1.16
end)

=begin
menu.each do |key, value|
	if greatest?(menu.first[1], value)
		expensive = value
	end 
	if expensive == value
end

menu.each do 


def greatest?(a, b)
	a > b ? true : false
end

def smallest?(a, b)
	a > b ? true : false
end

first = menu.first[1]

expensive = ""
cheap = ""



#menu.each do |key, value|
#	if greatest?(value)
#end





=end

binding.pry