require "csv"

desc "Import CSV file with orders"
task import_orders: :environment do

  Dir.glob("/private/var/folders/_q/ql8zdrm1591dcm9654313hxc0000gn/T/*.csv").each do |file|
    CSV.foreach(file, headers: true, :header_converters => lambda { 
      |h| h.try(:downcase).try(:gsub,' ', '_') }) do |row|
        Order.create! row.to_hash
    end
  end 
end 
