def elephants
  start = Time.now
   yield
  finish = Time.now
  result = (finish - start)
  puts
  puts "Tiempo en que se realizó el método: #{result} segundos"
end

elephants do 
  counter = 0
  while counter < 5
    counter += 1
    sleep 1
     puts "#{counter} elefante se columpiaba sobre la tela de una araña como veía que resistía fueron a llamar a otro elefante."
 end
 print "6 elefantes rompieron la telaraña"
end