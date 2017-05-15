restaurant_menu = {"Ramen" => 3, "Dal Makhani" => 4, "Coffe" => 2}
#mostrar solo las llaves
#puts restaurant_menu.keys

#mostrar solo los valores de las llaves 
#puts restaurant_menu.values

#2_1

puts "el plato mas caro es"
mas_Caro=restaurant_menu.values.max
restaurant_menu.each do |x|
	if x[1]==mas_Caro
		puts x[0]
	end
end

#Otra manera de desarrollarlo
#puts "El plato mas caro es : #{restaurant_menu.max_by{|k, v| v } [0]}"

#2_2

puts "el plato mas barato es"
mas_barato=restaurant_menu.values.min
restaurant_menu.each do |x|
	if x[1]==mas_barato
		puts x[0]
	end
end

#puts "El plato mas barato es: #{restaurant_menu.min_by{|k, v| v }[0]}"

#2_3

puts "El Promedio de los Precios de los platos es"
valor_total=0
restaurant_menu.each do |x|
	valor_total += x[1]
end

puts valor_total/restaurant_menu.length

#Otra Forma de calcular el promedio es:
#avg = restaurant_menu.values.inject(&:+)/restaurant_menu.length
#puts "Promedio de los precios de los platos es #{avg}"

#2_4

nombre_platos = restaurant_menu.keys

puts nombre_platos.inspect

#2_5

valores_platos = restaurant_menu.values

puts valores_platos.inspect

#2_6

menu_iva ={}
i=0
llaves=restaurant_menu.keys
valores=restaurant_menu.values

while i<restaurant_menu.length
 	menu_iva[llaves[i]] = valores[i]*1.19 
 	i+=1
end

puts menu_iva.inspect

#Otras maneras de responder la pregunta
#1
# hashConIva={}

# restaurant_menu.each do |x|
# 	hashConIva[x[0]]=x[1]*1.19
# end

# puts hashConIva

#2
# restaurant_menu.each{|key, value| restaurant_menu[key]=value*1.19}
# puts "los valores con IVA son : #{restaurant_menu}"

#2_7

descuento_plato={}
restaurant_menu.each do |x|
	if x[0].split.size>1
		descuento_plato[x[0]]=x[1]*0.80
	else
		descuento_plato[x[0]]=x[1]
	end
end
puts descuento_plato.inspect

#Otra Manera inline
# restaurant_menu.each{|key, value| restaurant_menu[key] = value*0.8 if key.split.size> 1}
# puts restaurant_menu	

