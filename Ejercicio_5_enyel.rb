def verificador(array, string)
	i=0
	while i<array.length
		if(array[i].upcase.eql?string.upcase)
			return 1
		end
		i+=1
	end
	#retorna 1 en caso de que el string no se encuentre en el arreglo
	return 0
end

idpersonas = []

idpersonas[0]={:Nombre => "Kike",:Pais=>"Boliviano",:Continente=>"América",:Genero=>"Masculino"}
idpersonas[1]={:Nombre => "Pame",:Pais=>"Chile",:Continente=>"América",:Genero=>"Femenino"}
idpersonas[2]={:Nombre => "Pato",:Pais=>"Ruso",:Continente=>"Europa",:Genero=>"Masculino"}
idpersonas[3]={:Nombre => "Belen",:Pais=>"China",:Continente=>"Asia",:Genero=>"Femenino"}
idpersonas[4]={:Nombre => "peDro",:Pais=>"Portugal",:Continente=>"Europa",:Genero=>"Masculino"}
idpersonas[5]={:Nombre => "Pedro",:Pais=>"Mexicano",:Continente=>"América",:Genero=>"Masculino"}
idpersonas[6]={:Nombre => "Juan",:Pais=>"Marruecos",:Continente=>"África",:Genero=>"Masculino"}
idpersonas[7]={:Nombre => "Daniel",:Pais=>"Australia",:Continente=>"Oceanía",:Genero=>"Masculino"}

# puts id_personas.inspect

#conteo personas
puts "Total personas ingresadas es #{idpersonas.length}"


continentes=[]
idpersonas.each do |per|
	#puts x[:Continente]
	if verificador(continentes,per[:Continente]) == 0
		continentes.push(per[:Continente])
	end
end

puts "los continentes son:"
puts continentes.inspect

pedros=[]

idpersonas.each do |per|
	if per[:Nombre].upcase.eql?"PEDRO"
		pedros.push(per)
	end
end

puts pedros

hombres = []
mujeres = []

idpersonas.each do |per|
	if per[:Genero].upcase.eql?"MASCULINO"
		hombres.push(per)
	else
		mujeres.push(per)
	end
end

puts hombres.inspect
puts mujeres.inspect

hash6={}

idpersonas.each do |per|
	if(hash6[ per[:Continente].upcase ].nil?)
		hash6[ per[:Continente].upcase]=[].push(per[:Pais])
	else
		hash6[ per[:Continente].upcase].push(per[:Pais])
	end
end

puts hash6.inspect