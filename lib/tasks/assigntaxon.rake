require 'csv'

desc "Imports a CSV file into an ActiveRecord table"

task :assigntaxon, [:filename] => :environment do
		CSV.foreach('finish1_classification.csv', :headers => true) do |row|
		Spree::Classification.create!(row.to_hash)
	end
end