require 'csv'

desc "Imports a CSV file into an ActiveRecord table"

task :assigntaxonnow, [:filename] => :environment do
		CSV.foreach('id_boss_new.csv', :headers => true) do |row|
		Spree::Classification.create!(row.to_hash)
	end
end