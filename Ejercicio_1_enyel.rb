hash = {"x":1, "y":2}

#1_1
hash[:z] = 3

puts hash.inspect

#1_2
hash[:x] = 5

puts hash.inspect

#1_3
hash.delete(:y)

puts hash.inspect

#1_4

if hash.keys.include? :z
	puts "yeeeah"
end

#Otra Manera de realizarlo
# hash.each do |key, value|
# 	if key.to_s == "z"
# 		puts "yeaah"
# 	end
# end

#1_5

puts hash.invert

#Una manera Más compleja de responder
# hash2 ={}
# i=0

# llaves=hash.keys
# valores=hash.values

# while i<hash.length
# 	hash2[valores[i]] = llaves[i] 
# 	i+=1
# end

# puts hash2

