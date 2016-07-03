require 'json'

class Dict
	class << self
		def store
			file = File.read(Rails.root + "public/entries.json")
			data = JSON.parse(file)
			data.each do |d|
				Dictionary.create(word: d["word"], word_type: d["wordtype"], meaning: d["definition"])
			end
		end
	end
end
