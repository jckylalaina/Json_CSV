require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/scarpper'

def get
  emails = Mail.new
  x = emails.perfom
end

def save_as_json(get)
	get = get
    File.open("db/emails.json","w") do |f|
      f.write(JSON.pretty_generate(get))
    end
end


def save_as_drive
  session = GoogleDrive::Session.from_config("config.json")

  session.upload_from_file("db/emails.json","emails.json", convert:false)
end
 

def save_as_csv(get)
	get = get
  CSV.open("db/emails.csv", "wb") {|csv| get.to_a.each {|elem| csv << elem} }
end	
