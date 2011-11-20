module DramaHelper
  
  def get_item_embed_id(item_url)
    # returns the item embed id depending on the URL
    
    # YouTube shortened URL format
    logger.info(item_url)
    item_id = ''
    if item_url.starts_with? 'http://youtu.be/'
        item_id = item_url.split("/").last
    end
    item_id
  end
end
