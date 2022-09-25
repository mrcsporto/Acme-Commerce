class Order < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true, :header_converters => lambda { |h| h.try(:downcase).try(:gsub,' ', '_') }) do |row|
      Order.create! row.to_hash
    end
  end
end
