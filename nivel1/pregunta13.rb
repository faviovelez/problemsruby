# Se tiene un array con los días feriados.
# feriados = ["Lunes 19", "Martes 20","Miercoles 31"]
# y se tiene una array con todos los días de clase del mes
# dias = ["Lunes 3", "Martes 4" .. ]
# 1) Suponiendo que el lunes cae el día tres, y este tiene 31 días. Generar el arreglo completo de días
# 2) Crear un arreglo manual con 5 feriados
# 3) Mostrar los días que hay clases ese mes.
# 4) Repetir la pregunta anterior pero esta vez sacando sabados y domingos de la lista.

require 'pry'
# La solución 1 es calendario
# La solución 2 es manual, el array feriados


# Líneas de la 11 a la 30 con la solución de la pregunta 3
feriados = ["Lunes 17", "Martes 18", "Miercoles 20", "Jueves 21", "Lunes 31"]
semana = "Lunes Martes Miercoles Jueves Viernes".split
calendario = []
n = 3
m = 0

while n <= 31
		5.times do 
			calendario.push("#{semana[m]} #{n}")
			m += 1
			n += 1
			if n >= 31
				break
			end
		end
		n += 2
		m = 0
end

# Esta es mi solución para la pregunta 4
feriados = ["Lunes 17", "Martes 18", "Miercoles 20", "Jueves 21", "Lunes 31"]
semana = "Lunes Martes Miercoles Jueves Viernes Sabado Domingo".split
calendario = []
sab_dom = []
cal_final = []
cal_mid = []
n = 3
m = 0

while n <= 31
		7.times do 
			calendario.push("#{semana[m]} #{n}")
			m += 1
			n += 1
			if n >= 31
				break
			end
		end
		m = 0
end

x = 8
y = 5

while x <= 31
		2.times do 
			sab_dom.push("#{semana[y]} #{x}")
			y += 1
			x += 1
			if x >= 31
				break
			end
		end
		x += 5
		y = 5
end

cal_mid = calendario - feriados
cal_final = cal_mid - sab_dom

binding.pry