personas = ["Carolina", "Alejandro", "Maria_Jesús", "Valentín"]
edad = [32, 28,41, 19]
#4_1
personas_hash = {}
i = 0
while i < personas.length
	personas_hash[personas[i]] = edad[i]  
	i = i + 1
end
puts personas_hash.inspect

#4_2
# personas_hash.each do |key, value|
# 	puts "#{key} tiene #{value}"  
# end

def edades(hash)
	return hash.values
end

puts edades(personas_hash)