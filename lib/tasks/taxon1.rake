#lib/tasks/import.rake

require 'csv'

desc "Imports a CSV file into an ActiveRecord table"

task :taxon1, [:filename] => :environment do
		CSV.foreach('taxon1.csv', :headers => true) do |row|
		Spree::Taxon.create!(row.to_hash)
	end
end
