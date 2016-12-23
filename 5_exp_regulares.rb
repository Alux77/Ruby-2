def string_con_un_numero_de_cuenta
  puts "Ingrese número de cuenta: "
  input = gets.chomp

  if input.size == 10
    input_2 = input.sub /(\d{4})(\d{3})(\d{3})/, '\1-\2-\3'
    "El Cliente con el número de cuenta #{input_2} se encuentra en proceso de revisión de sus documentos"
  else
    "Número de cuenta no encontrado"
  end
end
p string_con_un_numero_de_cuenta == "El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos"

def detect(string)
  string_2 = string.match(/\d{4}\d{3}\d{3}/).to_s
  string_2.sub /(\d{4})(\d{3})(\d{3})/, '\1-\2-\3'
end
p detect("cuenta1: cuenta2: 1234456789") == "1234-456-789"

def detect_array(string)
  array_new = []
  array_new << string.match(/\d{4}\-\d{3}-\d{3}/).to_s
  array_new 
end
p detect_array("cuenta1: cuenta2: 1234-456-789") == ["1234-456-789"]

def replace(string)
  replace = string.match(/\d{4}\-\d{3}-\d{3}/).to_s
  replace.gsub!(/\d{4}\-\d{3}/, 'XXXX-XXX')
end
p replace("cuenta1: cuenta2: 1234-456-789") == "XXXX-XXX-789"

def method3(string)
  if string.length == 10
    string.sub /(\d{4})(\d{3})(\d{3})/, '\1-\2-\3'
  elsif string.match(/\D/).to_s
    string.gsub!(/\D/, '-')
  else
    nil
  end
end
p method3("1234567890") == "1234-567-890"
p method3("1234.567.890") == "1234-567-890"
p method3("123456789") == nil