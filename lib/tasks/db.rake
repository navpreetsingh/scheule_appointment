require 'dict.rb'
require 'pro.rb'

namespace :db do 
	desc "Store products in db"
	task products: :environment do
		Pro.store		
	end

	desc "Store dictionary words in db"
	task dictionary: :environment do
		Dict.store
	end
end