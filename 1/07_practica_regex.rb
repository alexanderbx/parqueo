regex = /(\d+(?:\.\d+)?)/

captura = "el precio es Q12.34".match(regex)

# .match             <- ejecute un regex
# ([0-9]+)           <- primera captura
# (?:\.([0-9][0-9])) <- ignore captura, solo es para agrupar
# ([0-9][0-9])       <- segunda captura

puts captura.inspect