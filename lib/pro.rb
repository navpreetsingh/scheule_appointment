require 'json'

class Pro
	class << self
		def store
			file = File.read(Rails.root + "public/products.json")
			data = JSON.parse(file)
			data.each do |d|
				d["mrp"] = d["product_mrp"]
				d["channel"] = d["channel_name"]
				d.delete("product_mrp")
				d.delete("channel_name")
				Product.create(d)
			end
		end
	end
end
