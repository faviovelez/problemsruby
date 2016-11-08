# Se tiene un arreglo que contiene arreglos dentro, [1,2,3,[1,2,3],4,5,6,[1,2,3]], se pide que si existe un
# arreglo dentro de ese arreglo, se sumen los elementos interiores y se guarden en un arreglo
# completamente nuevo, los elementos que no esten dentro de un arreglo serán ignorados. En el ejemplo
# anterior el resultado quedaría:
# [6,6]
require 'pry'
arr = [1,2,3,[1,2,3],4,5,6,[1,2,3]]
arr_new = []

for i in arr
	if i.class == Array
		arr_new.push(i.inject(0){|sum, x| sum += x })
	end
end
binding.pry