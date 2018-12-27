class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      search_term = req.path.split("/items/").last
      @@items.find
      
      resp.write 
      
    else
      resp.write "Page not found"
      status_code = 404