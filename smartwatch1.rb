pasos = ['100', '21', '231as', '2031', '1052000', '213b', 'b123']

def clear_steps(pasos)
filtrado_letras = pasos.reject{|x| /[a-z]/.match(x)} # Filtro y elimino los datos que tienen caracteres (Expresiones regulares)

b = filtrado_letras.map do |e| # Se mapea para transformarlos a numeros enteros
e = e.to_i
end

c = b.reject {|x| x<200 || x>10000} # Filtro nuevamente para solo obtener el dato requerido

end 

print clear_steps pasos 
print "\n"