#lib/tasks/import.rake

require 'csv'

desc "Imports a CSV file into an ActiveRecord table"

task :import, [:filename] => :environment do
		CSV.foreach('id_test.csv', :headers => true) do |row|
		Spree::Classification.create!(row.to_hash)
	end
end