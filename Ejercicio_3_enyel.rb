inventario = {"Notebooks":4, "PC_Escritorio": 6, "Routers":10, 
"Impresoras": 6}

puts inventario.inspect

opcion =0

while(opcion!=5)

	puts "Ingresar una opcion"
	puts "1: Agregar item"
	puts "2: Inventario total"
	puts "3: Mayor stock"
	puts "4: Verificar existencia"
	puts "5: Salir"
	opcion = gets.chomp.to_i

	case opcion
	when 1
	  puts "Ingrese nombre y stock separados por ','"
	  item = gets.chomp.split(',')
	  puts item.inspect
	  inventario[item[0].to_sym]=item[1].to_i
	  puts inventario.inspect
	when 2
	  puts "La suma total del inventario es"
	  totalInventario=0
	  inventario.each do |x|
	  	totalInventario += x[1].to_i
	  end
	  puts totalInventario
	when 3
		puts "el articulo con mayor stock es:"
		inventario.each do |x|
			if(x[1].to_i == inventario.values.max)
				puts "#{x[0]} el cual posee #{x[1]}"
			end
		end
	when 4
		puts "Ingrese nombre del articulo a verificar"
		articulo = gets.chomp
		inventario.each do |x|
			if articulo.upcase.eql? x[0].to_s.upcase
				puts "el articulo #{articulo} se encuentra y posee stock = #{x[1]}"
			end
		end
	#Si la opcion es igual a 5 se termina el programa·
	when 5
		puts "Saliendo..."
	else
	  puts "La opción #{opcion} No es válida."
	end
end


