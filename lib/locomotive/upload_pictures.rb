require 'open-uri'

File.foreach("/home/huangwei/db/articles1.json") do |line| 
  record = JSON.parse(line)
  url = Nokogiri::HTML(record["content"]).css('img').first.try('[]', 'src')
  if url && url.length < 100
    p record["title"]
    p url
    tempfile = open(url)
    if tempfile.class == Tempfile
      article = Locomotive::ContentEntry5494e4d965c2a3bf4b000013.find(record["_id"]["$oid"])
      article.main_image = tempfile
      article.save
    end
  end

end

