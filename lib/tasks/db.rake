namespace :db do
  desc "TODO"
  task importBeers: :environment do
  	require 'csv'
  	require 'net/http'
	require 'json'

	csv_text = File.read('Beer Data.csv')
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
	  # Get image 
	  name = row.to_hash["name"]

	  image = Google::Search::Image.new(:query => name).first.uri
	  row["img"] = image
	  
	  Beer.create!(row.to_hash)
	end
  end

end
