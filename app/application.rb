class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      search_term = req.path.split("/items/").last
      item = Item.all.find {|i| i.name == search_term}
        if item
          resp.write item.price
        else
          
      
    else
      resp.write "Route not found"
      status_code = 404