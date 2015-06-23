namespace :db do
  desc "TODO"
  task importBeers: :environment do
  	require 'csv'
    require 'net/http'
	# require 'json'
	# require 'open-uri'
	#require 'open_uri_redirections'

	csv_text = File.read('Beer Data.csv')
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
	  # Get image 
	  name = row.to_hash["name"]

	  image = Google::Search::Image.new(:query => name).first.uri
	  puts image

	  img_local = image.split('/').last

	  open('app/assets/images/' + img_local, 'wb') do |file|
  		file << open(image, :allow_redirections => :safe).read
	  end

	  row["img"] = img_local
	  
	  Beer.create!(row.to_hash)
	end
  end

end
