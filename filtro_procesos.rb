n = ARGV[0].to_i
data = open("procesos.data").readlines # Aqui abrimos el archivo que vamos a trabajar
data.reject! {|x| x.empty?}
a = (data.map do |x| x.to_i end)
b = []
x = a.count
x.times do |i|
    if a[i] > n
        b.push a[i]
    end
end
open("procesos_filtrados.data", "w") do |csv| # Aqui guardamos el array en un nuevo archivo
    csv << b
end