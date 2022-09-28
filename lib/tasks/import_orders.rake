#TASK PARA REALIZAR A IMPOTAÇÃO DO ARQUIVO EM BACKGROUND, PORÉM, ELE VAI BUSCAR NA PASTA TEMPORÁRIA,
# PREFERI REMOVER POIS ACREDITO QUE A PASTA PODE MUDAR DE ACORDO COM QUEM FOR USAR.

# require "csv"
# require "tempfile"

# desc "Import CSV file with orders"
# task :import_orders => :environment do

#     Dir.glob("/var/folders/_q/ql8zdrm1591dcm9654313hxc0000gn/T/*.csv").each do |file|
#       CSV.foreach(file, headers: true, :header_converters => lambda { 
#         |h| h.try(:downcase).try(:gsub,' ', '_') }) do |row|
#           Order.create! row.to_hash
#       end
#     end 
#   end 



  