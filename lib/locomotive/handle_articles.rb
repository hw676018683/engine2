$site_id = "5494e47465c2a3848c000002"
$_type = "Locomotive::ContentEntry5494e4d965c2a3bf4b000013"
$name = "ContentEntry5494e4d965c2a3bf4b000013"
$content_type_id = "5494e4d965c2a3bf4b000013"
$category = "5494e4d965c2a3d3ce00001e"
$attachment = "5494e4d965c2a3f7ad00001c"

File.foreach("/home/huangwei/db/articles1.json") do |line| 
  record = JSON.parse(line)
  
  record["category_id"] = record.delete("item_id")
  record["hit"] = record.delete("scan")
  record["_visible"] = record.delete("published")

  record["custom_fields_recipe"] = {"name"=>$name, "rules"=>[{"name"=>"title", "type"=>"string", "required"=>true, "unique"=>false, "localized"=>false}, {"name"=>"author", "type"=>"string", "required"=>false, "unique"=>false, "localized"=>false}, {"name"=>"content", "type"=>"text", "required"=>false, "unique"=>false, "localized"=>false}, {"name"=>"hit", "type"=>"integer", "required"=>true, "unique"=>false, "localized"=>false}, {"name"=>"category", "type"=>"belongs_to", "required"=>true, "unique"=>false, "localized"=>false, "class_name"=>"Locomotive::ContentEntry#{$category}"}, {"name"=>"attachments", "type"=>"has_many", "required"=>false, "unique"=>false, "localized"=>false, "class_name"=>"Locomotive::ContentEntry#{$attachment}", "inverse_of"=>"article", "order_by"=>nil}, {"name"=>"main_image", "type"=>"file", "required"=>false, "unique"=>false, "localized"=>false}], "version"=>1, "model_name"=>"Locomotive::ContentEntry"}
  record["_label_field_name"] = "title"
  record["_translated"] = { "zh-CN" => true }
  record["site_id"] = {"$oid" => $site_id}
  record["_type"] = $_type
  record["_slug"] =  { "zh-CN" => Pinyin.t(record["title"], splitter: '-') }
  record["content_type_id"] = {"$oid" => $content_type_id}
  # record["main_image"] = Nokogiri::HTML(record["content"]).css('img').first.try('[]', 'src')


  File.open("/home/huangwei/test2.json", "a") do |f|
    f << record.to_json
    f << "\n"
  end
end

