namespace :db do
  desc "TODO"
  task importBeers: :environment do
  	require 'csv'
	csv_text = File.read('Beer Data.csv')
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
	  Beer.create!(row.to_hash)
	end
  end

end